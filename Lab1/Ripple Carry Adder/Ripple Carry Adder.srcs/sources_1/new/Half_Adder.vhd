----------------------------------------------------------------------------------
-- 
-- Engineer: Tharaka Ratnayake
-- 
-- Create Date: 12/24/2019 11:03:51 AM
-- Design Name: Half Adder
-- Module Name: Half_Adder - Behavioral
-- Project Name: Ripple Carry Adder

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

entity Half_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is
    
begin
 S <= A xor B;
 C <= A and B; 

end Behavioral;
