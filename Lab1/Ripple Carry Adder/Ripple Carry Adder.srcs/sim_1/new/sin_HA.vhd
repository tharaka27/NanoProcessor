library ieee;
use ieee.std_logic_1164.all;

entity sin_HA is 
end sin_HA;

architecture behavioral of sin_HA is

component half_Adder is 
 port( A,B : in std_logic;
       S,C : out std_logic);
end component;

signal A_arg,B_arg,C_arg,S_arg : std_logic;

begin 

UUT : half_Adder port map(
    A => A_arg,
    B => B_arg,
    C => C_arg,
    S => S_arg
);

process
begin
  A_arg <= '0';
  B_arg <= '0';
  
  wait for 100ns;
  A_arg <= '0';
  B_arg <= '1';
  
  wait for 100ns;
  A_arg <= '1';
  B_arg <= '0';
  
  wait for 100ns;
  A_arg <= '1';
  B_arg <= '1';
  
 wait;
 end process;
end ;