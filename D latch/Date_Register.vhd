library ieee;
use ieee.std_logic_1164.all;
entity data_register is
port
(clk,load,reset:in std_logic;
 d:in std_logic_vector (3 downto 0 );
Q:out std_logic_vector (3 downto 0)
);
end entity data_register;
architecture behavioral of data_register is 
begin
process(clk,load,reset)
begin
if(reset='1') then Q<="0000";
elsif(rising_edge(clk)) then 
if(load='1') then Q<=d;
end if;
end if ;
end process;
end architecture behavioral;


