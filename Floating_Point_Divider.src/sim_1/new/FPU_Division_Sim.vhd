-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2023 05:30:00 PM
-- Design Name: 
-- Module Name: FPU_Division_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FPU_Division_Sim is
--  Port ( );
end FPU_Division_Sim;

architecture Behavioral of FPU_Division_Sim is

  constant CLK_PERIOD : time := 10 ns; 
  signal A : std_logic_vector(31 downto 0);
  signal B : std_logic_vector(31 downto 0);
  signal Result : std_logic_vector(31 downto 0);
  signal Clk : std_logic; 
  signal Start : std_logic;
  signal Finish : std_logic;

begin
DUT1: entity work.FPU_Division
    port map (
      A => A,
      B => B,
      Result => Result,
      Clk => Clk,
      Start => Start,
      Finish => Finish
    );
    
  Clk_Process: process
  begin
    while now < 1000 ns loop
      Clk <= '0';
      wait for CLK_PERIOD / 2;
      Clk <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
    wait;
  end process Clk_Process;

  Examples_Process: process
  begin
    -- Test case 1 - Normal division
--    A <= x"414c0000"; -- Example: 12.75 
--    B <= x"402eb852"; -- Example: 2.73000001907
--    Start <= '1';
--    wait for 10 ns;
--    Start <= '0';
--    wait until Finish = '1';
--    if Result = x"40957357" then -- Expected result: 4.67
--      report "Test case 1 passed: Correct result"
--        severity note;
--    else
--      report "Test case 1 failed: Incorrect result"
--        severity error;
--    end if;

    -- Test case 2 - Negative division
--    A <= x"c1940000"; -- -18.5
--    B <= x"40e9999a"; -- 7.3
--    Start <= '1';
--    wait for 10 ns;
--    Start <= '0';
--    wait until Finish = '1';
--    if Result = x"c0223119" then -- Expected result: -2.53424658
--      report "Test case 2 passed: Correct result"
--        severity note;
--    else
--      report "Test case 2 failed: Incorrect result"
--        severity error;
--    end if;

  --   Test case 3 - Large positive division
    A <= x"41ce6666"; -- 25.8
    B <= x"40da3d71"; -- 6.82
    Start <= '1';
    wait for 10 ns;
    Start <= '0';
    wait until Finish = '1';
    if Result = x"40721c87" then -- Expected result: 3.782991202346041
      report "Test case 3 passed: Correct result"
        severity note;
    else
      report "Test case 3 failed: Incorrect result"
        severity error;
    end if;

--    -- Test case 4 - Division by zero exception
--    A <= x"420b3333"; -- 34.8
--    B <= x"00000000"; -- 0 (division by zero)
--    Start <= '1';
--    wait for 10 ns;
--    Start <= '0';
--    wait until Finish = '1'; -- Add a timeout condition
--    if Result = X"7ff80000" then -- Expected result: Positive infinity (division by zero exception)
--      report "Test case 4 passed: Correct result (Division by zero)"
--        severity note;
--    else
--      report "Test case 4 failed: Incorrect result (Division by zero)"
--        severity error;
--    end if;
    
        wait;
  end process Examples_Process;

end Behavioral;
