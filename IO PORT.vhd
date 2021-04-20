
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity tri_bus is 
generic 
(n_pins:integer:=4);
port
(OI:in std_logic;
DIN :in std_logic_vector (n_pins-1 downto 0);
 Dout :out std_logic_vector (n_pins-1 downto 0)
pin:inout std_logic_vector (n_pins-1 downto 0)

);
end entity tri_bus;
architecture gate of tri_bus is  
begin
din<=pin;
if (oi='1') then Pin<=Dout;
elsif (oi='0') then pin<="ZZZZ";
else pin<="XXXX";
end architecture gate;
 
