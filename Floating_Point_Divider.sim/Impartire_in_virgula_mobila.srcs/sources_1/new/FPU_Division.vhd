----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2023 02:29:55 AM
-- Design Name: 
-- Module Name: FPU_Division - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FPU_Division is
  Port ( A : in std_logic_vector(31 downto 0);
         B : in std_logic_vector(31 downto 0);
         Result : out std_logic_vector(31 downto 0);
         Clk : in std_logic;
         Start : in std_logic;
         Finish : out std_logic);
end FPU_Division;

architecture Behavioral of FPU_Division is

  component Divider is
    Port (
      A : in std_logic_vector(23 downto 0);
      B : in std_logic_vector(23 downto 0);
      Result : out std_logic_vector(23 downto 0);
      Clk : in std_logic;
      Start : in std_logic;
      Finish : out std_logic
    );
  end component;

  component Exceptions is
    Port (
      A : in std_logic_vector(31 downto 0);
      B : in std_logic_vector(31 downto 0);
      enable : out std_logic;
      Result : out std_logic_vector(31 downto 0)
    );
  end component;

  -- Signals for the sign
  signal A_Sign : std_logic := '0';
  signal B_Sign : std_logic := '0';
  signal Res_Sign : std_logic := '0';
  signal Normalization : std_logic := '0';

  -- Signals for the exponent
  signal A_Exp : std_logic_vector(7 downto 0);
  signal B_Exp : std_logic_vector(7 downto 0);
  signal Res_Exp : std_logic_vector(7 downto 0);

  -- Signals for the mantissa
  signal A_Mantissa : std_logic_vector(22 downto 0);
  signal B_Mantissa : std_logic_vector(22 downto 0);
  signal Res_Mantissa : std_logic_vector(22 downto 0);

  -- Signals for mantissa with one
  signal A_Mantissa_With_One : std_logic_vector(23 downto 0);
  signal B_Mantissa_With_One : std_logic_vector(23 downto 0);

  -- Signal for the result
  signal Division_Signal : std_logic_vector(24 downto 0);

  -- Signals for exceptions
  signal Overflow_Exception : std_logic := '0';
  signal Divide_By_Zero_Exception : std_logic := '0';
  signal Finish_Signal : std_logic;

  -- Signals for Exceptions entity
  signal Exceptions_Result : std_logic_vector(31 downto 0);
  signal Exceptions_Enable : std_logic;
  signal My_Exceptions_Result : std_logic_vector(31 downto 0);
  constant NaN_Value : std_logic_vector(31 downto 0) := x"7ff80000";--nan

begin
Exceptions_Instance: entity work.Exceptions port map (
    A => A,
    B => B,
    enable => Exceptions_Enable,
    Result => Exceptions_Result
    );
  
Division: entity work.Divider port map (
      A => A_Mantissa_With_One,
      B => B_Mantissa_With_One,
      Result => Division_Signal,
      Clk => Clk,
      Start => Start,
      Finish => Finish
    );  
  
  A_Sign <= A(31);
  B_Sign <= B(31);

  A_Exp <= A(30 downto 23);
  B_Exp <= B(30 downto 23);

  A_Mantissa <= A(22 downto 0);
  B_Mantissa <= B(22 downto 0);

  -- Compute the sign
  Res_Sign <= A_Sign xor B_Sign;


  A_Mantissa_With_One <= '1' & A_Mantissa;
  B_Mantissa_With_One <= '1' & B_Mantissa;
  

  Normalization <= not Division_Signal(24);
  Res_Exp <= (A_Exp - B_Exp) + 127 - Normalization;
  -- Check for exceptions
  Overflow_Exception <= '1' when (A_Exp + B_Exp > 254) else '0';
  Divide_By_Zero_Exception <= '1' when (B(31) = '0' and B(30 downto 0) = "0000000000000000000000000000") or 
                                        (B(31) = '1' and B(30 downto 0) = "1111111111111111111111111111") else '0';
  -- Calculate the mantissa
  Res_Mantissa <= Division_Signal(23 downto 1) when Normalization = '0'
                               else Division_Signal(22 downto 0);

  
  Exceptions_Enable <=  Overflow_Exception or Divide_By_Zero_Exception;
  Result <= Nan_Value when Divide_By_Zero_Exception = '1' else
            Res_Sign & Res_Exp & Res_Mantissa;
 
end Behavioral;
