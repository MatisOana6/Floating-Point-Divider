----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2023 09:43:15 PM
-- Design Name: 
-- Module Name: Control_Unit - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_Unit is
  Port ( 
            clk : in STD_LOGIC;
             btn : in STD_LOGIC_VECTOR (4 downto 0);
             sw : in STD_LOGIC_VECTOR (15 downto 0);
             led : out STD_LOGIC_VECTOR (15 downto 0);
             an : out STD_LOGIC_VECTOR (3 downto 0);
             cat : out STD_LOGIC_VECTOR (6 downto 0)
  );
end Control_Unit;

architecture Behavioral of Control_Unit is
  
  component FPU_Division is
    Port ( A : in std_logic_vector(31 downto 0);
           B : in std_logic_vector(31 downto 0);
           Result : out std_logic_vector(31 downto 0);
           Clk : in std_logic;
           Start : in std_logic;
           Finish : out std_logic);
  end component;

  component Seven_Seg_Display is
    Port(digit: in std_logic_vector(15 downto 0);
         clk: in std_logic;
         an: out std_logic_vector(3 downto 0);
         cat: out std_logic_vector(6 downto 0));
  end component;

  component MPG 
    Port ( en : out STD_LOGIC;
           input : in STD_LOGIC;
           clock : in STD_LOGIC);
  end component;

component Counter is
     Port ( clk : in STD_LOGIC;
          en : in STD_LOGIC; --MPG Buton
          rst : in STD_LOGIC;
          count : out STD_LOGIC
    );
end component;

  signal result : std_logic_vector(31 downto 0) := x"00000000";
  signal Start : std_logic := '0';  --buton(0)
  signal Finish : std_logic := '0'; --led(1)
  signal digits : STD_LOGIC_VECTOR (15 downto 0);
  signal nr1, nr2: STD_LOGIC_VECTOR (31 downto 0);
  signal aSauB, selJum1, selJum2, btn1, btn2, rst, btn_res, sel_res : std_logic := '0';
  

begin
--Exemplul 1
nr1 <= x"41cccccd"; --25.6
nr2 <= x"40fa8f5c"; --7.83
--rezultatul este aprox x"40513f1a" = 3.26947641373

--Exemplul 2
--nr1 <= x"421eae14"; --39.67
--nr2 <= x"4182cccd"; --16.35
--rezultatul este aprox x"401b487e" = 2.42629969


Start_btn: MPG port map (
    en => Start,
    input => btn(4),
    clock => clk
);

btn1_btn: MPG port map (
    en => btn1,
    input => btn(3),
    clock => clk
);

btn2_btn: MPG port map (
    en => btn2,
    input => btn(2),
    clock => clk
);

bt_sel: MPG port map (
    en => btn_res,
    input => btn(0),
    clock => clk
);

SEL_AB: Counter port map(
          clk => clk,
          en => btn1,
          rst =>rst,
          count => aSauB
);

SEL_A: Counter port map(
          clk => clk,
          en => btn1,
          rst =>rst,
          count => selJum1
);


SEL_B: Counter port map(
          clk => clk,
          en => btn2,
          rst =>rst,
          count => selJum2
);


SEL_REZ: Counter port map(
          clk => clk,
          en => btn_res,
          rst =>rst,
          count => sel_res
);

FPU_Unit: FPU_Division port map (
    A => nr1,
    B => nr2,
    Result => result,
    Clk => clk,
    Start => Start,
    Finish => Finish
  );
  


Afisor: Seven_Seg_Display port map(
    digit => digits,  -- Initialize to zero
    clk => clk,
    an => an,
    cat => cat
  );
  

process(clk, sw, sel_res, selJum1, selJum2, nr1, nr2, result)
    begin
    digits <= x"0000";
        if sw(0) = '1' then
          if selJum1 = '0' then
            digits <= nr1(31 downto 16);
          else 
            digits <= nr1(15 downto 0);
          end if;
        elsif sw(1) = '1' then
          if selJum2 = '0' then
            digits <= nr2(31 downto 16);
          else 
            digits <= nr2(15 downto 0);
          end if;
        elsif sw(2) = '1' then
          if sel_res = '0' then
            digits <= result(31 downto 16);
          else 
            digits <= result(15 downto 0);
          end if;
        end if;
    end process;

  end Behavioral;



