----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:23:16 03/16/2023 
-- Design Name: 
-- Module Name:    multiarray - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiarray is
    Port ( a6 : in  STD_LOGIC_VECTOR (5 downto 0);
           b6 : in  STD_LOGIC_VECTOR (5 downto 0);
           z : out  STD_LOGIC_VECTOR (11 downto 0));
end multiarray;

architecture Behavioral of multiarray is

component HA is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC;
           s: out  STD_LOGIC);
end component;

component FA is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           so : out  STD_LOGIC);
end component;

signal h1, h2, h3, h4, h5 :STD_LOGIC_VECTOR(5 downto 0);
signal g1, g2, g3, g4, g5 :STD_LOGIC_VECTOR(5 downto 0);

begin

z(0) <= a6(0) and b6(0);

     q1: HA PORT MAP
	  ( a => a6(1) and b6(0),
       b => a6(0) and b6(1),
       c => g1(0),
       s => h1(0));
		 
z(1) <= h1(0);

     q2: FA PORT MAP
	  ( a1 => a6(2) and b6(0),
       b1 => a6(1) and b6(1),
       ci => g1(0),
       co => g1(1),
       so => h1(1) );
		 
		  q3: FA PORT MAP
	  ( a1 => a6(3) and b6(0),
       b1 => a6(2) and b6(1),
       ci => g1(1),
       co => g1(2),
       so => h1(2) );
		 
		 q4: FA PORT MAP
	  ( a1 => a6(4) and b6(0),
       b1 => a6(3) and b6(1),
       ci => g1(2),
       co => g1(3),
       so => h1(3) );
		 
		  q5: FA PORT MAP
	  ( a1 => a6(5) and b6(0),
       b1 => a6(4) and b6(1),
       ci => g1(3),
       co => g1(4),
       so => h1(4) );
		 
		 q6: HA PORT MAP
	  ( a => a6(5) and b6(1),
       b => g1(4),
       c => g1(5),
       s => h1(5));
		 
		 ------
		 q7: HA PORT MAP
	  ( a => a6(0) and b6(2),
       b => h1(1),
       c => g2(0),
       s => h2(0));
		 
		 z(2) <= h2(0);
		 
		  q8: FA PORT MAP
	  ( a1 => a6(1) and b6(2),
       b1 => h1(2),
       ci => g2(0),
       co => g2(1),
       so => h2(1) );
		 
		 q9: FA PORT MAP
	  ( a1 => a6(2) and b6(2),
       b1 => h1(3),
       ci => g2(1),
       co => g2(2),
       so => h2(2) );
		 
		 q10: FA PORT MAP
	  ( a1 => a6(3) and b6(2),
       b1 => h1(4),
       ci => g2(2),
       co => g2(3),
       so => h2(3) );
		 
		 q11: FA PORT MAP
	  ( a1 => a6(4) and b6(2),
       b1 => h1(5),
       ci => g2(3),
       co => g2(4),
       so => h2(4) );
		 
		 q12: FA PORT MAP
	  ( a1 => a6(5) and b6(2),
       b1 => g1(5),
       ci => g2(4),
       co => g2(5),
       so => h2(5) );
		 
		 -------
		  q13: HA PORT MAP
	  ( a => a6(0) and b6(3),
       b => h2(1),
       c => g3(0),
       s => h3(0));
		 
		 z(3) <= h3(0);
		 
		 q14: FA PORT MAP
	  ( a1 => a6(1) and b6(3),
       b1 => h2(2),
       ci => g3(0),
       co => g3(1),
       so => h3(1) );
		 
		 q15: FA PORT MAP
	  ( a1 => a6(2) and b6(3),
       b1 => h2(3),
       ci => g3(1),
       co => g3(2),
       so => h3(2) );
		 
		 q16: FA PORT MAP
	  ( a1 => a6(3) and b6(3),
       b1 => h2(4),
       ci => g3(2),
       co => g3(3),
       so => h3(3) );
		 
		 q17: FA PORT MAP
	  ( a1 => a6(4) and b6(3),
       b1 => h2(5),
       ci => g3(3),
       co => g3(4),
       so => h3(4) );
		 
		 q18: FA PORT MAP
	  ( a1 => a6(5) and b6(3),
       b1 => g2(5),
       ci => g3(4),
       co => g3(5),
       so => h3(5) );
		 -----
		  q19: HA PORT MAP
	  ( a => a6(0) and b6(4),
       b => h3(1),
       c => g4(0),
       s => h4(0));
		 
		 z(4) <= h4(0);
		 
		  q20: FA PORT MAP
	  ( a1 => a6(1) and b6(4),
       b1 => h3(2),
       ci => g4(0),
       co => g4(1),
       so => h4(1) );
		 
		 q21: FA PORT MAP
	  ( a1 => a6(2) and b6(4),
       b1 => h3(3),
       ci => g4(1),
       co => g4(2),
       so => h4(2) );
		 
		 q22: FA PORT MAP
	  ( a1 => a6(3) and b6(4),
       b1 => h3(4),
       ci => g4(2),
       co => g4(3),
       so => h4(3) );
		 
		 q23: FA PORT MAP
	  ( a1 => a6(4) and b6(4),
       b1 => h3(5),
       ci => g4(3),
       co => g4(4),
       so => h4(4) );
		 
		  q24: FA PORT MAP
	  ( a1 => a6(5) and b6(4),
       b1 => g3(5),
       ci => g4(4),
       co => g4(5),
       so => h4(5) );
		 ----------------------------------------
		 q25: HA PORT MAP
	  ( a => a6(0) and b6(5),
       b => h4(1),
       c => g5(0),
       s => h5(0));
		 
		 z(5) <= h5(0);
		 
		 q26: FA PORT MAP
	  ( a1 => a6(1) and b6(5),
       b1 => h4(2),
       ci => g5(0),
       co => g5(1),
       so => h5(1) );
		 
		 q27: FA PORT MAP
	  ( a1 => a6(2) and b6(5),
       b1 => h4(3),
       ci => g5(1),
       co => g5(2),
       so => h5(2) );
		 
		 q28: FA PORT MAP
	  ( a1 => a6(3) and b6(5),
       b1 => h4(4),
       ci => g5(2),
       co => g5(3),
       so => h5(3) );
		 
		  q29: FA PORT MAP
	  ( a1 => a6(4) and b6(5),
       b1 => h4(5),
       ci => g5(3),
       co => g5(4),
       so => h5(4) );
		 
		 q30: FA PORT MAP
	  ( a1 => a6(5) and b6(5),
       b1 => g4(5),
       ci => g5(4),
       co => g5(5),
       so => h5(5) );
		 
		 z(6) <= h5(1);
		 z(7) <= h5(2);
		 z(8) <= h5(3);
		 z(9) <= h5(4);
		 z(10) <= h5(5);
		 z(11) <= g5(5);


end Behavioral;

