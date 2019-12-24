----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2019 11:03:51 AM
-- Design Name: 
-- Module Name: RCA - Behavioral
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

entity RCA is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           C_out : out STD_LOGIC);
end RCA;

architecture Behavioral of RCA is

component Full_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component Full_Adder;

signal FA_0_C : std_logic;
signal FA_1_C : std_logic;
signal FA_2_C : std_logic;

begin

FA_0 : Full_Adder port map(
          A => A0,
          B => B0,
          C_in => C_in,
          S => S0,
          C_out => FA_0_C
);

FA_1 : Full_Adder port map(
          A => A1,
          B => B1,
          C_in => FA_0_C,
          S => S1,
          C_out => FA_1_C
);
FA_2 : Full_Adder port map(
          A => A2,
          B => B2,
          C_in => FA_1_C,
          S => S2,
          C_out => FA_2_C
);
FA_3 : Full_Adder port map(
          A => A3,
          B => B3,
          C_in => FA_2_C,
          S => S3,
          C_out => C_out
);


end Behavioral;
