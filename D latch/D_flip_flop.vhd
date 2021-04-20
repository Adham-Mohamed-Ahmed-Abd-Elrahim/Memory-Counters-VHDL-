--d flipflop with asynch-reset_set
--set is inverted
library ieee;
use ieee.std_logic_1164.all;
entity D_Latch is 
port(
Gate,d,rest,set:in std_logic;
Q:out std_logic
);
end entity D_Latch;
Architecture seq of D_Latch is
begin
latch:process
begin 
wait on rest,set,d,Gate;
        if(rest='1') then Q<='0';
	elsif(rising_edge(Gate)) then 
	if (set='0') then Q<='1';
        else  q<=d;
	end if ;
       end if ;
end process latch ;
end architecture seq;