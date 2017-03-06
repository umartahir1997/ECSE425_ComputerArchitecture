library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pc is
port(clk : in std_logic;
	 reset : in std_logic;
	 counterOutput : out std_logic_vector(31 downto 0);
	 counterInput : in std_logic_vector(31 downto 0)
	 );
end pc;

architecture pc_arch of pc is

signal internal_output : std_logic_vector(31 downto 0);
 
begin

process (clk,reset)
begin
	
	if (reset = '1') then
		internal_output <= x"00000000";
	end if;
end process;

counterOutput <= internal_output;
	
end pc_arch;