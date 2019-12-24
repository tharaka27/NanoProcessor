library ieee;
use ieee.std_logic_1164.all;

entity sin_FA is
end sin_FA;

architecture behavioral of sin_FA is

component Full_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component Full_Adder;

signal A,B, C_in, S, C_out : std_logic;

begin

UUT: Full_Adder port map(
    A => A,
    B => B,
    C_in => C_in,
    S => S,
    C_out => C_out
);

process

begin
   C_in <= '0';
   A <= '0';
   B <= '0';
   
   wait for 100ns;
   C_in <= '0';
   A <= '0';
   B <= '1';

wait for 100ns;
   C_in <= '0';
   A <= '1';
   B <= '1';

wait for 100ns;
   C_in <= '0';
   A <= '1';
   B <= '0';

wait for 100ns;
   C_in <= '1';
   A <= '1';
   B <= '1';
  
wait;
end process;
 
 end;