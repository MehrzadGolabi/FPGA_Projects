library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram_address_writer is
    generic (
        RAM_Width   : integer := 10;
        RAM_AddWidth: integer := 8
    );
    port (
        Clock       : in  std_logic;
        Reset       : in  std_logic;
        Start_Write : in  std_logic;  -- Trigger to start writing addresses
        Write_Done  : out std_logic;  -- Indicates when all addresses are written
        Busy        : out std_logic;  -- Indicates module is currently writing
        -- Optional: Read interface for verification
        Read_Addr   : in  std_logic_vector(RAM_AddWidth-1 downto 0);
        Read_Data   : out std_logic_vector(RAM_Width-1 downto 0)
    );
end ram_address_writer;

architecture Behavioral of ram_address_writer is
    -- Component declaration for Block RAM
    component Block_RAM is
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
    end component;

    -- FSM states for address writing process
    type state_type is (IDLE, WRITING, DONE);
    signal current_state, next_state : state_type := IDLE;
    
    -- Counter for current address being written
    signal addr_counter : unsigned(RAM_AddWidth-1 downto 0) := (others => '0');
    
    -- Internal signals for RAM interface
    signal we_ram           : std_logic := '0';
    signal write_addr_ram   : std_logic_vector(RAM_AddWidth-1 downto 0) := (others => '0');
    signal read_addr_ram    : std_logic_vector(RAM_AddWidth-1 downto 0) := (others => '0');
    signal data_in_ram      : std_logic_vector(RAM_Width-1 downto 0) := (others => '0');
    signal data_out_ram     : std_logic_vector(RAM_Width-1 downto 0);
    
begin
    -- Instantiate the Block RAM
    block_ram_inst: Block_RAM
        generic map (
            RAM_Width    => RAM_Width,
            RAM_AddWidth => RAM_AddWidth
        )
        port map (
            Clock         => Clock,
            WE            => we_ram,
            Write_Address => write_addr_ram,
            Read_Address  => read_addr_ram,
            Data_In       => data_in_ram,
            Data_Out      => data_out_ram
        );

    -- State machine sequential logic
    process(Clock, Reset)
    begin
        if Reset = '1' then
            current_state <= IDLE;
            addr_counter <= (others => '0');
        elsif rising_edge(Clock) then
            current_state <= next_state;
            
            -- Update address counter
            if current_state = WRITING then
                addr_counter <= addr_counter + 1;
            elsif current_state = IDLE then
                addr_counter <= (others => '0');
            end if;
        end if;
    end process;
    
    -- State machine combinational logic
    process(current_state, Start_Write, addr_counter)
    begin
        -- Default values
        next_state <= current_state;
        we_ram <= '0';
        write_addr_ram <= (others => '0');
        data_in_ram <= (others => '0');
        Write_Done <= '0';
        Busy <= '0';
        
        case current_state is
            when IDLE =>
                if Start_Write = '1' then
                    next_state <= WRITING;
                    Busy <= '1';
                end if;
                
            when WRITING =>
                Busy <= '1';
                we_ram <= '1';
                write_addr_ram <= std_logic_vector(addr_counter);
                -- Write the address value to the cell (truncated to RAM_Width if needed)
                if RAM_Width >= RAM_AddWidth then
                    -- If RAM width is larger than address width, zero-extend
                    data_in_ram(RAM_AddWidth-1 downto 0) <= std_logic_vector(addr_counter);
                    data_in_ram(RAM_Width-1 downto RAM_AddWidth) <= (others => '0');
                else
                    -- If RAM width is smaller than address width, truncate
                    data_in_ram <= std_logic_vector(addr_counter(RAM_Width-1 downto 0));
                end if;
                
                -- Check if we've written to all addresses
                if addr_counter = to_unsigned(2**RAM_AddWidth-1, RAM_AddWidth) then
                    next_state <= DONE;
                end if;
                
            when DONE =>
                Write_Done <= '1';
                next_state <= IDLE;
                
        end case;
    end process;

    -- Read interface for verification
    -- This allows external reading of any address after initialization
    process(Clock)
    begin
        if rising_edge(Clock) then
            if Busy = '0' then  -- Only read when not busy writing
                read_addr_ram <= Read_Addr;
                Read_Data <= data_out_ram;
            end if;
        end if;
    end process;
    
end Behavioral;
