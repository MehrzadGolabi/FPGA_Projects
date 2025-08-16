library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Block_RAM is
    generic (
        RAM_Width   : integer := 10;
        RAM_AddWidth: integer := 8
    );
    port (
        Clock        : in  std_logic;
        WE           : in  std_logic;
        Write_Address: in  std_logic_vector (RAM_AddWidth-1 downto 0);
        Read_Address : in  std_logic_vector (RAM_AddWidth-1 downto 0);
        Data_In      : in  std_logic_vector (RAM_Width-1 downto 0);
        Data_Out     : out std_logic_vector (RAM_Width-1 downto 0)
    );
end Block_RAM;

architecture Behavioral of Block_RAM is
    type Mem_Type is array (0 to 2**RAM_AddWidth-1) of std_logic_vector (RAM_Width-1 downto 0);
    signal Mem_Signal : Mem_Type := (others=>(others=>'0')); -- Initialize memory to 0, it's a matrix of RAM_Width-1 downto 0, 0 to 2**RAM_AddWidth-1

begin
    process(Clock)
    begin
        if rising_edge(Clock) then
            if (WE = '1') then
                Mem_Signal(to_integer(unsigned(Write_Address))) <= Data_In;
            end if;
            Data_Out <= Mem_Signal(to_integer(unsigned(Read_Address)));
        end if;
    end process;
end Behavioral;
