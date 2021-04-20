--d flipflop with synch-reset
library ieee;
use ieee.std_logic_1164.all;
entity D_Latch is 
port(
Gate,d,clr:in std_logic;
Q:out std_logic
);
end entity D_Latch;
Architecture seq of D_Latch is
begin
latch:process
begin 
wait on clr,d,Gate;
	if(rising_edge(Gate)) then 
	if (clr='1') then Q<='0';
        else  q<=d;
	end if ;
       end if ;
end process latch ;
end architecture seq;
