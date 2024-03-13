----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2023 02:29:55 AM
-- Design Name: 
-- Module Name: Exceptions - Behavioral
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

entity Exceptions is
  Port (
    A : in std_logic_vector(31 downto 0);
    B : in std_logic_vector(31 downto 0);
    enable : out std_logic;
    Result : out std_logic_vector(31 downto 0)
  );
end Exceptions;

architecture Behavioral of Exceptions is
  signal aux : std_logic_vector(31 downto 0);
  constant NaN_Value : std_logic_vector(31 downto 0) := "01111111111110000000000000000000";--nan

begin
  process(A, B)
    variable exp_A, exp_B, exp_Result : integer;
  begin
    exp_A := to_integer(unsigned(A(30 downto 23))) - 127;
    exp_B := to_integer(unsigned(B(30 downto 23))) - 127;

    if B = X"00000000" then
      -- Division by zero condition: B is zero
      aux <= NaN_Value;
    elsif B = X"80000000" then
      -- Division by zero condition: B is negative zero
      aux <= NaN_Value;
    elsif exp_A + exp_B > 254 then
      -- Overflow condition: sum of exponents exceeds valid range
      aux <= X"7F800000";  -- Positive infinity
    elsif exp_A + exp_B < 1 then
      -- Underflow condition: sum of exponents is too small
      aux <= X"00000000";  -- Zero
    else
      aux <= X"00000001";
    end if;
  end process;

  enable <= '1' when aux = X"00000001" or aux = NaN_Value else '0';
  Result <= aux;

end Behavioral;
