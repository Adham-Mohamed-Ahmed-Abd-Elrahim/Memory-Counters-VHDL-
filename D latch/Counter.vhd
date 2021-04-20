library ieee;
use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
entity Counter is
port
(clk,load,en,reset:in std_logic;
 d:in std_logic_vector (3 downto 0);
 q:out std_logic_vector (3 downto 0));
end entity Counter ;
architecture Behavioral of Counter is 
begin 
process (clk,reset,en,load)
begin
if(reset='1') then q<="0000";
elsif (rising_edge(clk)) then
if(load='1') then q<=d;
elsif(en='1') then q <= q +1;
end if;
end if;
end process ;
end architecture Behavioral;
