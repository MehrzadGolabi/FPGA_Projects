library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity  is
    Port ( 
        clk : in STD_LOGIC;
        LED : out STD_LOGIC_VECTOR (7 downto 0)
    );
end BRAM_APP;

architecture Behavioral of BRAM_APP is
    COMPONENT Block_RAM
        generic (
            RAM_Width   : integer := 8;
            RAM_AddWidth: integer := 10
        );
        Port (
            Clock        : in  std_logic;
            WE           : in  std_logic;
            Write_Address: in  std_logic_vector (RAM_AddWidth-1 downto 0);
            Read_Address : in  std_logic_vector (RAM_AddWidth-1 downto 0);
            Data_In      : in  std_logic_vector (RAM_Width-1 downto 0);
            Data_Out     : out std_logic_vector (RAM_Width-1 downto 0)
        );
    END COMPONENT;

    type mem_tp is array (0 to 9) of std_logic_vector (7 downto 0);
    signal LED_Dance        : mem_tp := (x"00",x"FF",x"00",x"FF",x"55",x"AA",x"55",x"AA",x"FF",x"00");
    signal Write_Address_int: std_logic_vector (9 downto 0) := "00"&x"02"; --write address is 2
    signal Read_Address     : std_logic_vector (9 downto 0) := (others => '0'); --read address is 0
    signal WE_int           : std_logic := '0';
    signal count            : unsigned (9 downto 0) := (others => '0');
    signal pattern_count    : unsigned (3 downto 0) := (others => '0');

begin

    Inst_Block_RAM: Block_RAM
    generic map (
        RAM_Width    => 8,
        RAM_AddWidth => 10
    )
    port map(
        Clock        => clk,
        WE           => WE_int,
        Write_Address=> std_logic_vector(count+2),
        Read_Address => std_logic_vector(count),
        Data_In      => LED_Dance(to_integer(pattern_count)),
        Data_Out     => LED
    );

    process(clk)
    begin
        if rising_edge(clk) then
            pattern_count <= pattern_count + 1;
            if pattern_count >= 9 then
                pattern_count <= (others => '0');
            end if;

            count <= count + 1;
            WE_int <= '1';
            
            if count = to_unsigned(1023,10) then
                count <= (others => '0');
                WE_int <= '0';
            end if;
        end if;
    end process;

end Behavioral;
