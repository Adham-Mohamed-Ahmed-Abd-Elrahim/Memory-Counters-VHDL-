library ieee;
use ieee.std_logic_1164.all;
entity shift is 

port 
(
q:inout std_logic_vector (3 downto 0);
clk,d0,reset,shift:in std_logic
);
end entity shift ;
architecture seq of shift is 
begin 
process(clk,reset)
begin 
if(reset='1') then q<="0000";
elsif(rising_edge(clk)) then 
if(shift='1') then
q(0)<=d0;
q(1)<=q(0);
q(2)<=q(1);
q(3)<=q(2);
end if ;
end if ;
end process;
end architecture seq;