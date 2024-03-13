----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/12/2024 11:19:24 PM
-- Design Name: 
-- Module Name: Exceptions_Sim - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Exceptions_Sim is
--  Port ( );
end Exceptions_Sim;

architecture Behavioral of Exceptions_Sim is

signal A, B : std_logic_vector(31 downto 0);
signal enable : std_logic;
signal Result : std_logic_vector(31 downto 0);

constant CLOCK_PERIOD : time := 10 ns;
  
begin
  
EX_TB: entity work.Exceptions
    port map (
      A => A,
      B => B,
      enable => enable,
      Result => Result
    );


  process
  begin
    while now < 500 ns loop
      wait for CLOCK_PERIOD / 2;
    end loop;
    wait;
  end process;


  process
  begin
    -- Test case 1: Division by zero condition
    A <= X"41280000";
    B <= X"00000000";
    wait for CLOCK_PERIOD;
    
    -- Test case 2: Negative zero condition
    A <= X"41280000";
    B <= X"80000000";
    wait for CLOCK_PERIOD;

    -- Test case 3: Overflow condition
    A <= X"7F800000";
    B <= X"7F800000";
    wait for CLOCK_PERIOD;

    -- Test case 4: Underflow condition
    A <= X"00000001";
    B <= X"80000001";
    wait for CLOCK_PERIOD;
    
    -- Test case 5: Normal condition
     A <= X"41280000";
     B <= X"40600000";
     wait for CLOCK_PERIOD;

  end process;
end Behavioral;