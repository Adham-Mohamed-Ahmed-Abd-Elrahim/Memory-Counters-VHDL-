library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.ALL;
entity Register_file is 

generic
(Data_w:integer:=8;
add_w:integer:=2);
port
(w_add: in std_logic_vector (add_w-1 downto 0);
w_en,clk:in std_logic;
w_data:in std_logic_vector (Data_w-1 downto 0);
radd:in std_logic_vector (add_w-1 downto 0);
rdata: out std_logic_vector (Data_w-1 downto 0)
);
end entity Register_file;
architecture behave of Register_file is 
type array_type is array(0 to 2**add_w-1) of std_logic_vector(Data_w-1 downto 0);
signal data :array_type;
begin
process (clk,w_en,w_add,w_data,radd)
begin 
if(rising_edge(clk)) then
    if (w_en='1') then
    data(to_integer(unsigned(w_add)))<=w_data;
    end if;
    rdata<=data(to_integer(unsigned(radd)));
    end if;
end process ;
end Architecture behave; 

