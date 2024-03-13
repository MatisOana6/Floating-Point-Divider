----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 06:11:52 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity Counter is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC; --MPG Buton
           rst : in STD_LOGIC;
           count : out STD_LOGIC
     );
end Counter;

architecture Behavioral of Counter is
signal intermediar:std_logic:='0';  
begin
    process(clk, rst,en)
    begin
        if rst='1' then
           intermediar<='0';
        elsif rising_edge(clk) then
               if en='1' then 
                    intermediar <= not(intermediar);
                end if;
        end if;
    end process;
count<=intermediar;
end Behavioral;

