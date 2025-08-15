library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity stepper_motor_fsm is
    Port ( 
        dip_sw   : in  STD_LOGIC_VECTOR (2 downto 0);  -- Speed and direction control
        clk      : in  STD_LOGIC;
        step_out : out STD_LOGIC_VECTOR (3 downto 0)    -- Motor phase outputs
    );
end stepper_motor_fsm;

architecture Behavioral of stepper_motor_fsm is
    -- FSM state type definition for stepper motor phases
    type stepper_state is (PHASE_A, PHASE_B, PHASE_C, PHASE_D);
    signal current_state, next_state : stepper_state := PHASE_A;
    signal delay_counter : unsigned(24 downto 0) := (others => '0');
    signal speed_divider : unsigned(24 downto 0) := (others => '0');
    signal step_pulse    : std_logic := '0';
    
begin
    speed_selector: process(dip_sw(1 downto 0))
    begin
        case dip_sw(1 downto 0) is
            when "00" => speed_divider <= to_unsigned(2400000, 25);
            when "01" => speed_divider <= to_unsigned(240000, 25);
            when "10" => speed_divider <= to_unsigned(24000, 25);
            when "11" => speed_divider <= to_unsigned(2400, 25);
            when others => speed_divider <= to_unsigned(2400000, 25);
        end case;
    end process;
    
    timing_gen: process(clk)
    begin
        if rising_edge(clk) then
            delay_counter <= delay_counter + 1;
            step_pulse <= '0';  -- Default: no step pulse
            
            -- Generate step pulse when counter reaches speed divider
            if delay_counter >= speed_divider then
                delay_counter <= (others => '0');
                step_pulse <= '1';  -- Trigger state transition
            end if;
        end if;
    end process;
    
    state_transition: process(current_state, step_pulse, dip_sw(2))
    begin
        next_state <= current_state;  -- Default: stay in current state
        
        if step_pulse = '1' then
            case current_state is
                when PHASE_A =>
                    if dip_sw(2) = '0' then
                        next_state <= PHASE_B;  -- Clockwise rotation
                    else
                        next_state <= PHASE_D;  -- Counter-clockwise rotation
                    end if;
                    
                when PHASE_B =>
                    if dip_sw(2) = '0' then
                        next_state <= PHASE_C;  -- Clockwise rotation
                    else
                        next_state <= PHASE_A;  -- Counter-clockwise rotation
                    end if;
                    
                when PHASE_C =>
                    if dip_sw(2) = '0' then
                        next_state <= PHASE_D;  -- Clockwise rotation
                    else
                        next_state <= PHASE_B;  -- Counter-clockwise rotation
                    end if;
                    
                when PHASE_D =>
                    if dip_sw(2) = '0' then
                        next_state <= PHASE_A;  -- Clockwise rotation
                    else
                        next_state <= PHASE_C;  -- Counter-clockwise rotation
                    end if;
            end case;
        end if;
    end process;
    
    state_register: process(clk)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    output_logic: process(current_state)
    begin
        case current_state is
            when PHASE_A => step_out <= "1000";  
            when PHASE_B => step_out <= "0100";  
            when PHASE_C => step_out <= "0010";  
            when PHASE_D => step_out <= "0001";  
        end case;
    end process;
    
end Behavioral;
