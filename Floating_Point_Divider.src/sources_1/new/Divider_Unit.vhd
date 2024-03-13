----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2023 09:27:59 PM
-- Design Name: 
-- Module Name: Divider - Behavioral
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

entity Divider is
  Port ( A : in std_logic_vector(23 downto 0);
         B : in std_logic_vector(23 downto 0);
         Result : out std_logic_vector(24 downto 0);
         Clk : in std_logic;
         Start : in std_logic;
         Finish : out std_logic);
end Divider;

architecture Behavioral of Divider is

signal Count : std_logic_vector(5 downto 0);
signal A_Sig : std_logic_vector(47 downto 0);
signal B_Sig : std_logic_vector(47 downto 0);
signal Dividend : std_logic_vector(47 downto 0);
signal Res_Sig : std_logic_vector(47 downto 0);
signal Approximate_Sig : std_logic;
signal Finish_Signal : std_logic;

begin

    process(Clk, Start)
    begin
        if(rising_edge(Clk)) then
              if (Start = '1') then 
                A_Sig(47 downto 24) <= (others => '0');
                A_Sig(23 downto 0) <= A;
                B_Sig(47 downto 24) <= (others => '0');
                B_Sig(23 downto 0) <= B;
                Res_Sig <= (others => '0');
                Count <= "101111";
                Finish_Signal <= '0';   
                Dividend(47 downto 24) <= (others => '0');
                Dividend(23 downto 0) <= A;
              else 
                if (Finish_Signal = '0') then
                 --Continue the division until the Step become "00000"
                     if (Dividend >= B_Sig) then
                     -- Set result bit to '1', subtract divisor from the current Divident 
                         Res_Sig(conv_integer(Count)) <= '1';
                         Dividend <= (Dividend(46 downto 0) - B_Sig(46 downto 0)) & '0';
                     else
                     -- Set result bit to '0', shift the current Divident 
                         Res_Sig(conv_integer(Count)) <= '0';
                         Dividend <= Dividend(46 downto 0) & '0'; 
                     end if;
                     -- Update Step value
                     if (Count = "00000") then 
                         Finish_Signal <= '1';
                     else
                         Count <= Count - '1';
                     end if;
                  end if;
             end if;
         end if;
    end process;  
    
    process(Res_Sig, Approximate_Sig)
    begin
            Approximate_Sig <= '0';
            for i in 22 downto 0 loop --Check each bit of the result
                if (Res_Sig(i) = '1') then
                    Approximate_Sig <= '1';
                end if;
             end loop;
             
                if (Approximate_Sig = '1') then --based on Approximate_Sig assign the Result
                    Result <= Res_Sig(47 downto 23) + 1;
                else
                    Result <= Res_Sig(47 downto 23);
                end if;
    end process; 
    
Finish <= Finish_Signal;        
end Behavioral;
