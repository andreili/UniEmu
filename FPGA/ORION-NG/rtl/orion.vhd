-- altera vhdl_input_version vhdl_2008

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity orion is
	port ( 
		CLOCK_25		: in  std_logic;

		SA				: out std_logic_vector(20 downto 0);
		SD				: inout std_logic_vector(15 downto 0);
		SOE			: out std_logic;
		SCE			: out std_logic_vector(1 downto 0);
		SWE			: out std_logic;
		-- video
		R				: out std_logic_vector(5 downto 0);
		G				: out std_logic_vector(5 downto 0);
		B				: out std_logic_vector(5 downto 0);
		BLANK_N		: out std_logic;
		VCLK			: out std_logic;
		HS				: out std_logic;
		SYNC_N		: out std_logic;
		VS				: out std_logic;
		-- to system bus
		ZOE			: out std_logic;
		ZA				: inout std_logic_vector(32 downto 1);
		ZB				: inout std_logic_vector(32 downto 1);
		-- to STM32
		STD			: in std_logic_vector(15 downto 0);
		STA			: in std_logic_vector(9 downto 0);
		stm_wrn		: in std_logic;
		stm_rdn		: in std_logic;
		CTRL			: in std_logic_vector(4 downto 2);
		-- control to EEPROM
		rrst_n		: out std_logic;
		rom_n			: out std_logic;
		rwe_n			: out std_logic;
		roe_n			: out std_logic;
		rwp_n			: out std_logic;
		-- user
		BTN			: in  std_logic;
		LED			: out std_logic_vector(2 downto 0)
	);
end entity;

architecture rtl of orion is

	component orion_pll is
		port (
			inclk0   : in  std_logic := 'X'; -- clk
			areset   : in  std_logic := 'X'; -- reset
			c0       : out std_logic;        -- clk 25MHz
			c1       : out std_logic         -- clk 150MHz
		);
	end component;

	component T80a is
		generic(
			Mode : integer := 1	-- 0 => Z80, 1 => Fast Z80, 2 => 8080, 3 => GB
		);
		port(
			RESET_n	: in std_logic;
			CLK_n		: in std_logic;
			WAIT_n	: in std_logic;
			INT_n		: in std_logic;
			NMI_n		: in std_logic;
			BUSRQ_n	: in std_logic;
			M1_n		: out std_logic;
			MREQ_n	: out std_logic;
			IORQ_n	: out std_logic;
			RD_n		: out std_logic;
			WR_n		: out std_logic;
			RFSH_n	: out std_logic;
			HALT_n	: out std_logic;
			BUSAK_n	: out std_logic;
			A			: out std_logic_vector(15 downto 0);
			D			: inout std_logic_vector(7 downto 0);
			RestorePC_n : in std_logic
		);
	end component;

	component cnt_sync is
		port (
			clk			:	 IN STD_LOGIC;
			clk_out		:	 IN STD_LOGIC;
			res_n			:	 IN STD_LOGIC;
			ldn_n			:	 IN STD_LOGIC;
			ldn_val		:	 IN STD_LOGIC_VECTOR(11 downto 0);
			cnt			:	 OUT STD_LOGIC_VECTOR(11 downto 0)
		);
	end component;
	
	component rom1
		port
		(
			address	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			rden		: IN STD_LOGIC  := '1';
			q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	end component;
	
	component ram_ov
		PORT
		(
			clock			: IN STD_LOGIC  := '1';
			data			: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			rdaddress	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			rden			: IN STD_LOGIC  := '1';
			wraddress	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			wren			: IN STD_LOGIC  := '0';
			q				: OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)
		);
	end component;

signal clk_25MHz			: std_logic;
signal clk_150MHz			: std_logic;
signal clk_o_75MHz		: std_logic;
signal clk_o_37d5MHz		: std_logic;
signal clk_o_18d75MHz	: std_logic;
signal clk_o_9d375MHz	: std_logic;
signal clk_o_4d6875MHz	: std_logic;
signal clk_o_2d34375MHz	: std_logic;
signal KEY_debounced		: std_logic_vector(3 downto 0);

signal clk_sel				: std_logic;

--------------------------------------------------------------------------------
--                           EXTERNAL SIGNALS                                 --
--------------------------------------------------------------------------------
signal irnXn				: std_logic_vector(8 downto 0);

--------------------------------------------------------------------------------
--                                 CPU                                        --
--------------------------------------------------------------------------------
signal clk_sig				: std_logic;
signal resetn				: std_logic;
signal addr					: std_logic_vector(15 downto 0);
signal data					: std_logic_vector(7 downto 0);
signal busrqn				: std_logic;
signal waitn				: std_logic;
signal intn					: std_logic;
signal nmin					: std_logic;
signal haltn				: std_logic;
signal m1n					: std_logic;
signal iorqn				: std_logic;
signal mreqn				: std_logic;
signal rfshn				: std_logic;
signal rdn					: std_logic;
signal wrn					: std_logic;
signal busakn				: std_logic;

signal int_frame_end		: std_logic;
signal rnmin				: std_logic;

signal mr1					: std_logic;
signal intan				: std_logic;
signal qrd					: std_logic;

--------------------------------------------------------------------------------
--                               PORTS                                        --
--------------------------------------------------------------------------------
signal port_mem_en		: std_logic;
signal port_io_en			: std_logic;
signal port_sel_mem		: std_logic_vector(16#FA# downto 16#F4#);
signal port_sel_io_h		: std_logic_vector(16#FF# downto 16#F8#);
signal port_sel_io_l		: std_logic_vector(7 downto 0);
signal port_sel			: std_logic_vector(255 downto 0);

--------------------------------------------------------------------------------
--                           CONTROL SIGNALS                                  --
--------------------------------------------------------------------------------
-- 0A
signal ctrl_RAM0_en		: std_logic;
signal ctrl_RAM1_en		: std_logic;
signal ctrl_RAM2_en		: std_logic;
signal ctrl_ROM2_en		: std_logic;
signal ctrl_ROM1_en		: std_logic;
signal ctrl_turbo_n		: std_logic;
signal ctrl_o128			: std_logic;
signal ctrl_top_mem		: std_logic;
--
signal video_mode			: std_logic_vector( 4 downto 0);
signal SR16					: std_logic;
--
signal ram_page			: std_logic_vector( 4 downto 0);
--
signal vb_tmp				: std_logic_vector( 1 downto 0);
signal video_bank			: std_logic_vector( 1 downto 0);
-- FB
signal ctrl_FB_SS			: std_logic_vector( 1 downto 0);
signal ctrl_FB_BS			: std_logic_vector( 2 downto 0);
signal ctrl_FB_xmem		: std_logic;
signal ctrl_FB_int		: std_logic;
signal ctrl_FB_mz			: std_logic;
signal ctrl_mz				: std_logic;
signal ctrl_FB_erom		: std_logic;
-- FC
signal ps1					: std_logic_vector( 7 downto 0);

signal ctrl_2A				: std_logic_vector( 7 downto 0);
signal ctrl_2B				: std_logic_vector( 7 downto 0);
signal ctrl_2C				: std_logic_vector( 7 downto 0);
signal ram_pages_pro		: std_logic_vector( 7 downto 0);
signal rom2_addr			: std_logic_vector( 7 downto 0);
signal ctrl_1C				: std_logic_vector( 7 downto 0);

signal ctrl_FE_FF_snd	: std_logic;

--------------------------------------------------------------------------------
--                          MEMORY DISPATCHER                                 --
--------------------------------------------------------------------------------
signal mem_fxxx			: std_logic;
signal mem_top				: std_logic;
signal mb					: std_logic_vector( 2 downto 0);
signal ma_sel				: std_logic_vector( 1 downto 0);
signal MA					: std_logic_vector(20 downto 14);
signal mem_blk				: std_logic;
signal mem_wrn				: std_logic;
signal mem_rdn				: std_logic;

--------------------------------------------------------------------------------
--                                  ROMs                                      --
--------------------------------------------------------------------------------
signal rom_sel				: std_logic;
signal rom1_sel			: std_logic;
signal rom2_sel			: std_logic;
signal rom_data			: std_logic_vector( 7 downto 0);

--------------------------------------------------------------------------------
--                          MEMORY CONTROLLER                                 --
--------------------------------------------------------------------------------
signal mem_req_set		: std_logic;
signal mem_req_res		: std_logic;
signal mem_req				: std_logic;
signal mem_req_in			: std_logic;
signal mem_rbuf			: std_logic_vector(15 downto 0);

--------------------------------------------------------------------------------
--                            VIDEO SIGNALS                                   --
--------------------------------------------------------------------------------
signal clk_vsel			: std_logic_vector( 1 downto 0);
signal clk_pixel			: std_logic;

signal screen_res			: std_logic_vector( 4 downto 0);
signal screen_x_blank	: std_logic_vector(11 downto 0);
signal screen_hs_start	: std_logic_vector(11 downto 0);
signal screen_hs_end		: std_logic_vector(11 downto 0);
signal screen_hs_pol		: std_logic;
signal screen_x_reset	: std_logic_vector(11 downto 0);
signal screen_vs_start	: std_logic_vector(11 downto 0);
signal screen_vs_end		: std_logic_vector(11 downto 0);
signal screen_vs_pol		: std_logic;
signal screen_y_reset	: std_logic_vector(11 downto 0);
signal screen_y_rend		: std_logic_vector(11 downto 0);

signal vblank_n			: std_logic;
signal vb					: std_logic_vector( 1 downto 0);
signal col					: std_logic_vector( 1 downto 0);

signal x_150				: std_logic_vector(11 downto 0);
signal x_25					: std_logic_vector(11 downto 0);
signal x						: std_logic_vector(11 downto 0);
signal BH					: std_logic;
signal XLE_raw				: std_logic;
signal XLE					: std_logic;
signal XLE_div				: std_logic_vector( 3 downto 0);
signal XRESN				: std_logic;
signal HS_pre				: std_logic;

signal y						: std_logic_vector(11 downto 0);
signal BV					: std_logic;
signal YRESN				: std_logic;

signal vaddr				: std_logic_vector(17 downto 0);
signal vmem					: std_logic_vector(15 downto 0);
signal vdata				: std_logic_vector(31 downto 0);

signal ps2					: std_logic_vector( 7 downto 0);
signal ps					: std_logic_vector( 7 downto 0);

-- video registers
signal preg0				: std_logic_vector( 7 downto 0);
signal preg1				: std_logic_vector( 7 downto 0);
signal preg2				: std_logic_vector( 7 downto 0);
signal preg3				: std_logic_vector( 7 downto 0);
signal pxls					: std_logic_vector( 3 downto 0);

signal vm14					: std_logic;
signal vm12					: std_logic;
signal vm_ps				: std_logic;
signal vm_st				: std_logic;
signal vm_pr				: std_logic;
signal sel16				: std_logic;

signal RR					: std_logic;
signal GG					: std_logic;
signal BB					: std_logic;
signal II					: std_logic;

-- STM32 communications
signal stm_ov_ctrl		: std_logic_vector(15 downto 0);
signal stm_ov_address	: std_logic_vector(11 downto 0);
signal stm_ov_write		: std_logic;
signal stm_ov_waddr		: std_logic_vector(11 downto 0);
signal stm_ov_rdata		: std_logic_vector( 7 downto 0);
signal stm_ov_wdata		: std_logic_vector(15 downto 0);
signal stm_ov_preg		: std_logic_vector( 7 downto 0);
signal stm_ov_hint		: std_logic;

begin
--------------------------------------------------------------------------------
--                       СВЯЗЬ СИГНАЛОВ С ПИНАМИ МС                           --
--------------------------------------------------------------------------------
rnmin <= '1';

-- основной PLL
pll_orion: orion_pll
	port map (
		CLOCK_25,
		'0',
		clk_25MHz,
		clk_150MHz
	);

clk_150: cnt_sync
	port map (
		clk_150MHz,
		not clk_150MHz,
		XRESN,
		'1',
		"000000000000",
		x_150
	);
clk_o_75MHz <= x_150(0);
clk_o_37d5MHz <= x_150(1);
clk_o_18d75MHz <= x_150(2);
clk_o_9d375MHz <= x_150(3);
clk_o_4d6875MHz <= x_150(4);
clk_o_2d34375MHz <= x_150(5);

cnt_25: cnt_sync
	port map (
		clk_25MHz,
		not clk_25MHz,
		XRESN,
		'1',
		"000000000000",
		x_25
	);

--------------------------------------------------------------------------------
--                                 CPU                                        --
--------------------------------------------------------------------------------
clk_sig <= clk_o_2d34375MHz when (ctrl_turbo_n='1')
	else clk_o_9d375MHz when (clk_sel='1')
	else clk_o_4d6875MHz;

process(clk_sig)
begin
	if (falling_edge(clk_sig)) then
		resetn <= BTN;
	end if;
end process;

busrqn <= '1';
nmin <= '1';
waitn <= '1';

intn <= not (ctrl_FB_int and int_frame_end);

cpu: T80a
	port map (
		resetn,
		not clk_sig,
		waitn,
		intn,
		nmin,
		busrqn,
		m1n,
		mreqn,
		iorqn,
		rdn,
		wrn,
		rfshn,
		haltn,
		busakn,
		addr,
		data,
		'1'
	);

mr1 <= mreqn or (not rfshn);
intan <= iorqn or m1n;
qrd <= rdn and intan;

--------------------------------------------------------------------------------
--                               PORTS                                        --
--------------------------------------------------------------------------------
port_mem_en <= (not mr1) and ctrl_o128;
port_sel_mem(16#F4#) <= port_mem_en when (addr(15 downto 8)=8x"F4") else '0';
port_sel_mem(16#F5#) <= port_mem_en when (addr(15 downto 8)=8x"F5") else '0';
port_sel_mem(16#F6#) <= port_mem_en when (addr(15 downto 8)=8x"F6") else '0';
port_sel_mem(16#F7#) <= port_mem_en when (addr(15 downto 8)=8x"F7") else '0';
port_sel_mem(16#F8#) <= port_mem_en when (addr(15 downto 8)=8x"F8") else '0';
port_sel_mem(16#F9#) <= port_mem_en when (addr(15 downto 8)=8x"F9") else '0';
port_sel_mem(16#FA#) <= port_mem_en when (addr(15 downto 8)=8x"FA") else '0';

port_io_en <= not iorqn;
port_sel_io_h(16#F8#) <= port_io_en  when (addr( 7 downto 0)=8x"F8") else '0';
port_sel_io_h(16#F9#) <= port_io_en  when (addr( 7 downto 0)=8x"F9") else '0';
port_sel_io_h(16#FA#) <= port_io_en  when (addr( 7 downto 0)=8x"FA") else '0';
port_sel_io_h(16#FB#) <= port_io_en  when (addr( 7 downto 0)=8x"FB") else '0';
port_sel_io_h(16#FC#) <= port_io_en  when (addr( 7 downto 0)=8x"FC") else '0';
port_sel_io_h(16#FD#) <= port_io_en  when (addr( 7 downto 0)=8x"FD") else '0';
port_sel_io_h(16#FE#) <= port_io_en  when (addr( 7 downto 0)=8x"FE") else '0';
port_sel_io_h(16#FF#) <= port_io_en  when (addr( 7 downto 0)=8x"FF") else '0';
port_sel_io_l(0) <= port_io_en  when (addr( 7 downto 2)=6x"00") else '0';
port_sel_io_l(1) <= port_io_en  when (addr( 7 downto 2)=6x"01") else '0';
port_sel_io_l(2) <= port_io_en  when (addr( 7 downto 2)=6x"02") else '0';
port_sel_io_l(3) <= port_io_en  when (addr( 7 downto 2)=6x"03") else '0';
port_sel_io_l(4) <= port_io_en  when (addr( 7 downto 2)=6x"04") else '0';
port_sel_io_l(5) <= port_io_en  when (addr( 7 downto 2)=6x"05") else '0';
port_sel_io_l(6) <= port_io_en  when (addr( 7 downto 2)=6x"06") else '0';
port_sel_io_l(7) <= port_io_en  when (addr( 7 downto 2)=6x"07") else '0';

port_disp: process (rnmin, resetn, clk_o_75MHz)
begin
	if (rnmin = '0') then
		ctrl_FB_mz <= '1';
	elsif (resetn = '0') then
		video_mode <= (others => '0');
		ctrl_FB_erom <= '1';
		
		ram_page <= (others => '0');
		
		vb_tmp <= "00";
		SR16 <= '0';
		
		ctrl_FB_SS <= "00";
		ctrl_FB_BS <= "000";
		ctrl_FB_xmem <= '0';
		ctrl_FB_int <= '0';
		ctrl_FB_mz <= '1';
		
		ctrl_1C <= (others => '0');
		ctrl_2A <= (others => '0');
		ctrl_2B <= (others => '0');
		ctrl_2C <= (others => '0');
		ram_pages_pro <= (others => '0');
		rom2_addr <= (others => '0');
		ctrl_1C <= (others => '0');
	elsif (rising_edge(clk_o_75MHz)) then
		if (((port_sel_mem(16#F8#) = '1') or (port_sel_io_h(16#F8#) = '1')) and (wrn = '0')) then
			video_mode <= data(4 downto 0);
			ctrl_FB_erom <= '0';
		end if;
		if (((port_sel_mem(16#F9#) = '1') or (port_sel_io_h(16#F9#) = '1')) and (wrn = '0')) then
			ram_page <= data(4 downto 0);
		end if;
		if (((port_sel_mem(16#FA#) = '1') or (port_sel_io_h(16#FA#) = '1')) and (wrn = '0')) then
			vb_tmp <= data(1) & data(0);
			SR16 <= data(7);
		end if;

		if ((port_sel_io_h(16#FB#) = '1') and (wrn = '0')) then
			ctrl_FB_SS <= data(1 downto 0);
			ctrl_FB_BS <= data(4 downto 2);
			ctrl_FB_xmem <= data(5);
			ctrl_FB_int <= data(6);
			ctrl_FB_mz <= data(7);
		end if;
		if ((port_sel_io_h(16#FC#) = '1') and (wrn = '0')) then
			ps1 <= data;
		end if;
		if ((port_sel_io_h(16#FD#) = '1') and (wrn = '0')) then
		end if;
		if (port_sel_io_h(16#FE#) = '1') then
			ctrl_FE_FF_snd <= data(4);
		elsif ((port_sel_io_h(16#FF#) = '1') and (wrn = '0')) then
			ctrl_FE_FF_snd <= not ctrl_FE_FF_snd;
		end if;

		if ((port_sel_io_l(0) = '1') and (wrn = '0')) then
			-- printer
		end if;
		if ((port_sel_io_l(1) = '1') and (wrn = '0')) then
			case addr(1 downto 0) is
				when "00" => ctrl_2A <= data;
				when "01" => ctrl_2B <= data;
				when "10" => ctrl_2C <= data;
				when "11" => NULL;
			end case;
		end if;
		if ((port_sel_io_l(2) = '1') and (wrn = '0')) then
			case addr(1 downto 0) is
				when "00" => ram_pages_pro <= data;
				when "01" => rom2_addr <= data;
				when "10" => ctrl_1C <= data;
				when "11" => NULL;
			end case;
		end if;
		if ((port_sel_io_l(6) = '1') and (wrn = '0')) then
			-- keyboard
		end if;
	end if;
end process;

data <= "00000100"		when ((port_sel_io_l(0)='1') and (rdn='0') and (addr(1 downto 0)="00"))
	else ctrl_2A 			when ((port_sel_io_l(1)='1') and (rdn='0') and (addr(1 downto 0)="00"))
	else ctrl_2B 			when ((port_sel_io_l(1)='1') and (rdn='0') and (addr(1 downto 0)="01"))
	else ctrl_2C 			when ((port_sel_io_l(1)='1') and (rdn='0') and (addr(1 downto 0)="10"))
	else ram_pages_pro	when ((port_sel_io_l(2)='1') and (rdn='0') and (addr(1 downto 0)="00"))
	else rom2_addr			when ((port_sel_io_l(2)='1') and (rdn='0') and (addr(1 downto 0)="01"))
	else ctrl_1C 			when ((port_sel_io_l(2)='1') and (rdn='0') and (addr(1 downto 0)="10"))
	else (others => 'Z');

ctrl_RAM0_en <=ctrl_1C(0);
ctrl_RAM1_en <=ctrl_1C(1);
ctrl_RAM2_en <=ctrl_1C(2);
ctrl_ROM2_en <=ctrl_1C(3);
ctrl_ROM1_en <=ctrl_1C(4);
ctrl_turbo_n <=ctrl_1C(5);
ctrl_top_mem <= ctrl_1C(6);
ctrl_o128 <= ctrl_1C(7);
clk_sel <= '1';--SW(9);

process (int_frame_end)
begin
	if (rising_edge(int_frame_end)) then
		if (wrn = '0') then
			video_bank <= vb_tmp;
		end if;
	end if;
end process;

--------------------------------------------------------------------------------
--                          MEMORY DISPATCHER                                 --
--------------------------------------------------------------------------------
mem_fxxx <= addr(12) and addr(13) and addr(14) and addr(15) and ctrl_o128;
mem_top <= (addr(12) and addr(13) and addr(14) and addr(15) and ctrl_top_mem) or mem_fxxx;

mb(0) <= not (ctrl_RAM0_en and (not addr(14)) and (not addr(15)));	-- RAM0
mb(1) <= not (ctrl_RAM1_en and      addr(14)  and (not addr(15)));	-- RAM1
mb(2) <= not (ctrl_RAM2_en and (not addr(14)) and      addr(15));		-- RAM2
ma_sel(0) <= mb(0) and mb(1);
ma_sel(1) <= mb(0) and mb(2);

mem_disp: process (clk_o_75MHz)
begin
	if (rising_edge(clk_o_75MHz)) then
		if ((ctrl_mz='0') and (addr(15)='0') and (addr(14)='0')) then
			MA(20 downto 19) <= "00";
			MA(18 downto 16) <= ctrl_FB_BS;
			MA(15 downto 14) <= ctrl_FB_SS;
		elsif (mem_top = '1') then
			MA(20 downto 16) <= (others => '1');
			MA(15 downto 14) <= addr(15 downto 14);
		else
			case ma_sel is
			when "00" =>
				MA(20 downto 14) <= ctrl_2A(6 downto 0);
			when "10" =>
				MA(20 downto 14) <= ctrl_2B(6 downto 0);
			when "01" =>
				MA(20 downto 14) <= ctrl_2C(6 downto 0);
			when "11" =>
				MA(20 downto 16) <= ram_page(4 downto 0);
				MA(15 downto 14) <= addr(15 downto 14);
			end case;
		end if;
	end if;
end process;

mem_blk <= (((addr(10) or addr(11)) and mem_fxxx) and (not ctrl_FB_xmem)) or rom_sel;
mem_wrn <= wrn or mreqn or mem_blk;
mem_rdn <= rdn or mreqn or mem_blk;

--------------------------------------------------------------------------------
--                                  ROMs                                      --
--------------------------------------------------------------------------------
rom_sel <=  iorqn and (not addr(15)) and (not addr(14));
rom1_sel <= rom_sel and (not addr(13)) and (ctrl_ROM1_en or ctrl_FB_erom);
rom2_sel <= rom_sel and      addr(13)  and ctrl_ROM2_en;

r1: rom1
	port map (
		addr(12 downto 0),
		clk_o_75MHz,
		rom1_sel,
		rom_data
	);
data <= rom_data when ((rdn='0') and (rom1_sel='1')) 
	else (others => 'Z');

--------------------------------------------------------------------------------
--                          MEMORY CONTROLLER                                 --
--------------------------------------------------------------------------------
mem_req_set <= not (mem_wrn and mem_rdn);

ssync: process (mem_req_res, mem_req_set)
begin
	if (mem_req_res = '1') then
		mem_req <= '0';
	elsif (rising_edge(mem_req_set)) then
		mem_req <= '1';
	end if;
end process;

ctrl_mz <= addr(15) or addr(14) or ctrl_FB_mz;

mem_ctrl: process (clk_150MHz)
begin
	if (rising_edge(clk_150MHz)) then
		case x_150(3 downto 0) is
			when 4x"0" =>
				SA <= "00" & "000" & (not video_bank(1)) & (not video_bank(0)) & x(8 downto 3) & y(7 downto 0);
				SD <= (others => 'Z');
				SCE <= "00";
				SWE <= '1';
				SOE <= '0';
			when 4x"3" =>
				SA <= "00" & "000" & (not video_bank(1)) & video_bank(0) & x(8 downto 3) & y(7 downto 0);
				vdata(15 downto 0) <= SD;
			when 4x"6" =>
				--vdata(15 downto 0) <= SD;
				vdata(31 downto 16) <= SD;
				mem_req_in <= mem_req;
				mem_req_res <= mem_req;
				SCE <= "11";
				SWE <= '1';
				SOE <= '1';
			when 4x"7" =>
				SA <= "000" & MA(18) & MA(17) & MA(15) & MA(14) & addr(13 downto 0);
				if ((mem_wrn = '0') and (mem_req_in = '1')) then
					SD( 7 downto 0) <= data;
					SD(15 downto 8) <= data;
				else
					SD <= (others => 'Z');
				end if;
				SCE(0) <= MA(16) or MA(20) or MA(19);
				SCE(1) <= (not MA(16)) or MA(20) or MA(19);
			when 4x"8" =>
				mem_req_res <= '0';
				SWE <= mem_wrn or (not mem_req_in);
				SOE <= mem_rdn or (not mem_req_in);
			when 4x"9"|4x"a"|4x"b"|4x"c"|4x"d"|4x"e" =>
				if (mem_req_in = '1') then
					mem_rbuf <= SD;
				end if;
			when 4x"f" =>
				if (mem_req_in = '1') then
					mem_rbuf <= SD;
				end if;
				mem_req_in <= '0';
				SCE <= "11";
				SWE <= '1';
				SOE <= '1';
			when OTHERS =>
				NULL;
		end case;
	end if;
end process;

data <= mem_rbuf( 7 downto 0) when ((mem_rdn='0') and (MA(16)='0')) 
	else (others => 'Z');
data <= mem_rbuf(15 downto 8) when ((mem_rdn='0') and (MA(16)='1')) 
	else (others => 'Z');

--------------------------------------------------------------------------------
--                              VIDEO MODULE                                  --
--------------------------------------------------------------------------------
clk_pixel <= clk_25MHz when (clk_vsel="00")
		  else clk_o_75MHz when (clk_vsel="01");

x <= x_25 when (clk_vsel="00")
	else '0' & x_150(11 downto 1) when (clk_vsel="01");

XLEd: process (XLE_raw)
begin
	if (rising_edge(XLE_raw)) then
		XLE_div <= XLE_div + 1;
	end if;
end process;

cnty: cnt_sync
	port map (
		XLE,
		clk_pixel,
		YRESN,
		'1',
		"000000000000",
		y
	);

screen_res(0) <= SR16;
screen_res(1) <= '0';
screen_res(2) <= '1';--SW(8);
screen_res(3) <= '0';
screen_res(4) <= '0';

XRESN <= '0' when (x=screen_x_reset)
	 else '1';

/*
0000 - 640x480, 60Hz
0001 - 720x400, 70Hz
0010 - 1920x1080, 70Hz
*/

vm_logic: process (clk_o_75MHz)
begin
	if (rising_edge(clk_o_75MHz)) then
		case (screen_res) is
			when "00000" =>
				-- 640x480, 60Hz, 384 rows
				clk_vsel <= "00";
				screen_x_blank <= 12x"187";
				screen_hs_start <= 12x"218";
				screen_hs_end <= 12x"280";
				screen_hs_pol <= '0';
				screen_x_reset <= 12x"31f";
				screen_vs_start <= 12x"17a";
				screen_vs_end <= 12x"17b";
				screen_vs_pol <= '0';
				screen_y_reset <= 12x"20c";
			when "00001" =>
				-- 640x480, 60Hz, 512 rows
				clk_vsel <= "00";
				screen_x_blank <= 12x"207";
				screen_hs_start <= 12x"260";
				screen_hs_end <= 12x"2c0";
				screen_hs_pol <= '0';
				screen_x_reset <= 12x"31f";
				screen_vs_start <= 12x"17a";
				screen_vs_end <= 12x"17b";
				screen_vs_pol <= '0';
				screen_y_reset <= 12x"20c";
			when "00010" =>
				-- 720x400, 60Hz, 384 rows
				clk_vsel <= "00";
				screen_x_blank <= 12x"187";
				screen_hs_start <= 12x"218";
				screen_hs_end <= 12x"280";
				screen_hs_pol <= '1';
				screen_x_reset <= 12x"31f";
				screen_vs_start <= 12x"154";
				screen_vs_end <= 12x"155";
				screen_vs_pol <= '0';
				screen_y_reset <= 12x"1c0";
			when "00011" =>
				-- 720x400, 60Hz, 512 rows
				clk_vsel <= "00";
				screen_x_blank <= 12x"207";
				screen_hs_start <= 12x"260";
				screen_hs_end <= 12x"2c0";
				screen_hs_pol <= '1';
				screen_x_reset <= 12x"31f";
				screen_vs_start <= 12x"154";
				screen_vs_end <= 12x"155";
				screen_vs_pol <= '0';
				screen_y_reset <= 12x"1c0";
			when "00100" =>
				-- 1920x1080, 60Hz, 384 rows
				clk_vsel <= "01";	-- pixel - :2
				screen_x_blank <= 12d"391";
				screen_hs_start <= 12d"720";
				screen_hs_end <= 12d"742";
				screen_hs_pol <= '1';
				screen_x_reset <= 12d"1100";
				screen_vs_start <= 12d"400";
				screen_vs_end <= 12d"402";
				screen_vs_pol <= '1';
				screen_y_reset <= 12d"562";
			when "00101" =>
				-- 1920x1080, 60Hz, 512 rows
				clk_vsel <= "01";	-- pixel - :2
				screen_x_blank <= 12d"519";
				screen_hs_start <= 12d"784";
				screen_hs_end <= 12d"806";
				screen_hs_pol <= '1';
				screen_x_reset <= 12d"1100";
				screen_vs_start <= 12d"400";
				screen_vs_end <= 12d"402";
				screen_vs_pol <= '1';
				screen_y_reset <= 12d"562";
			when others =>
				NULL;
		end case;

		case (clk_vsel) is
			when "00" => XLE <= XLE_raw;
			when "01" => XLE <= XLE_div(0);
			when "10" => NULL;
			when "11" => NULL;
		end case;
	end if;
end process;

xy_logic: process (clk_pixel)
begin
	if (rising_edge(clk_pixel)) then
		-- X LOGIC
		if (x=12d"007") then
			BH <= '1';
		elsif (x=screen_x_blank) then
			BH <= '0';
		end if;
		if (x=screen_x_blank) then
			XLE_raw <= '1';
		else
			XLE_raw <= '0';
		end if;
		if (x=screen_hs_start) then
			HS <= screen_hs_pol;
		elsif (x=screen_hs_end) then
			HS <= not screen_hs_pol;
		end if;

		-- Y LOGIC
		if (y=12d"000") then
			BV <= '1';
		elsif (y=12x"100") then
			BV <= '0';
			int_frame_end <= '1';
		else
			int_frame_end <= '0';
		end if;
		if (y=screen_y_reset) then
			YRESN <= '0';
		else
			YRESN <= '1';
		end if;
		if (y=screen_vs_start) then
			VS <= screen_vs_pol;
		elsif (y=screen_vs_end) then
			VS <= not screen_vs_pol;
		end if;
	end if;
end process;

vblank_n <= BH and BV;

-- color shift registers
pxls(0) <= preg0(7);
pxls(1) <= preg1(7);
pxls(2) <= preg2(7);
pxls(3) <= preg3(7);
p023: process (x, clk_pixel)
begin
	if (rising_edge(clk_pixel)) then
		if (x(2 downto 0) = "111") then
			preg0 <= vdata(7 downto 0);
			--preg1 <= vdata(15 downto 8);
			preg2 <= vdata(23 downto 16);
			preg3 <= vdata(31 downto 24);
			-- overlay
			stm_ov_preg <= stm_ov_rdata;
			stm_ov_hint <= stm_ov_ctrl(0) and (not x(8));
		else
			preg0(7 downto 0) <= preg0(6 downto 0) & '0';
			--preg1(7 downto 0) <= preg1(6 downto 0) & '0';
			preg2(7 downto 0) <= preg2(6 downto 0) & '0';
			preg3(7 downto 0) <= preg3(6 downto 0) & '0';
			stm_ov_preg(7 downto 0) <= stm_ov_preg(6 downto 0) & '0';
		end if;
	end if;
end process;

p1: process (video_mode, x, clk_pixel)
begin
	if (video_mode(2) = '0') then
		preg1 <= (others => '0');
	elsif (rising_edge(clk_pixel)) then
		if (x(2 downto 0) = "111") then
			preg1 <= vdata(15 downto 8);
		else
			preg1(7 downto 0) <= preg1(6 downto 0) & '0';
		end if;
	end if;
end process;

-- pseudo color reg
pc2: process (clk_pixel)
begin
	if (rising_edge(clk_pixel)) then
		if (x(2 downto 0) = "111") then
			ps2 <= vdata(15 downto 8);
		end if;
	end if;
end process;

ps <= ps1 when (video_mode(3) = '1') else ps2;

-- video modes manage
vm14 <= video_mode(1) or video_mode(4);
vm12 <= not (video_mode(1) and video_mode(2) and (not video_mode(4)));
vm_ps <= vm12 or (not vblank_n);
vm_st <= vm14 or (not vblank_n);
vm_pr <= not ((not vblank_n) or (vm14 and vm12));
sel16 <= (not vblank_n) or (not video_mode(4));

-- video data switchers
RR <=   (video_mode(0) and pxls(0)) when ((vm_st='0') and (pxls(1)='0'))
	else (not pxls(0)) when ((vm_st='0') and (pxls(1)='1'))
	else ps(6) when ((vm_ps='0') and ((pxls(0)='0')))
	else ps(2) when ((vm_ps='0') and ((pxls(0)='1')))
	else pxls(2) when ((vm_pr='0') and ((sel16='0')))
	else '0';
GG <=   (video_mode(0) or pxls(0)) when ((vm_st='0') and (pxls(1)='0'))
	else '0' when ((vm_st='0') and (pxls(1)='1'))
	else ps(5) when ((vm_ps='0') and ((pxls(0)='0')))
	else ps(1) when ((vm_ps='0') and ((pxls(0)='1')))
	else pxls(0) when ((vm_pr='0') and ((sel16='0')))
	else '0';
BB <=   (video_mode(0) and (not pxls(0))) when ((vm_st='0') and (pxls(1)='0'))
	else pxls(0) when ((vm_st='0') and (pxls(1)='1'))
	else ps(4) when ((vm_ps='0') and ((pxls(0)='0')))
	else ps(0) when ((vm_ps='0') and ((pxls(0)='1')))
	else pxls(3) when ((vm_pr='0') and ((sel16='0')))
	else '0';
II <=   '0' when ((vm_st='0') and (pxls(1)='0'))
	else '0' when ((vm_st='0') and (pxls(1)='1'))
	else ps(7) when ((vm_ps='0') and ((pxls(0)='0')))
	else ps(3) when ((vm_ps='0') and ((pxls(0)='1')))
	else pxls(1) when ((vm_pr='0') and ((sel16='0')))
	else '0';

R(5) <= RR;
G(5) <= (GG  and (not stm_ov_hint)) or (stm_ov_preg(7) and stm_ov_hint);
B(5) <= BB;
R(4) <= RR and II;
G(4) <= (GG and II and (not stm_ov_hint)) or (stm_ov_preg(7) and stm_ov_hint);
B(4) <= BB and II;
R(3 downto 0) <= (others => RR);
G(3 downto 0) <= (others => GG);
B(3 downto 0) <= (others => BB);
VCLK <= clk_o_75MHz;
SYNC_N <= '0';
BLANK_N <= vblank_n;

--snd <= ctrl_FE_FF_snd;

/*
	STM32 communicating
*/

stm_wcomm: process(stm_wrn)
begin
	if (falling_edge(stm_wrn)) then
		case (STA) is
			when 10x"0000" =>	stm_ov_address <= STD(11 downto 0);
			when 10x"0001" => stm_ov_waddr <= stm_ov_address;
									stm_ov_wdata <= STD;
									stm_ov_address <= stm_ov_address + '1';
			when 10x"0002" => stm_ov_ctrl <= STD;
			WHEN OTHERS => NULL;
		end case;
	end if;
end process;
	
process(stm_wrn, clk_150MHZ)
begin
	if (stm_wrn = '0') then
		if (STA=10x"0001") then
			stm_ov_write <= '1';
		end if;
	elsif (rising_edge(clk_150MHz)) then
		stm_ov_write <= '0';
	end if;
end process;

ov_mem: ram_ov
	port map (
		clk_150MHz,
		stm_ov_wdata,
		x(7 downto 3) & y(7 downto 0),
		'1',
		stm_ov_waddr,
		stm_ov_write,
		stm_ov_rdata
	);



ZOE <= '1';
ZA(1) <= resetn;
ZA(8 downto 2) <= x(11 downto 5);
ZB(8 downto 1) <= x(11 downto 4);
ZA(32 downto 25) <= data;
--ZA <= (others => '0');
--ZB(31 downto 1) <= (others => '0');
--ZB(32) <= 'Z';
rrst_n <= '1';
rom_n <= '1';
rwe_n <= '1';
roe_n <= '1';
rwp_n <= '1';
--stm_data <= (others => 'Z');

end rtl;
