library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity CLK_GEN is
port (CLK20M:in std_logic;
	  CLK10K:out std_logic;
	  CLK1M:out std_logic;
	  CLK200 :out std_logic;
	  CLK4 :out std_logic);
end;
architecture one of CLK_GEN is
signal CLK1M_1:std_logic;
signal CLK4_1: std_logic;
signal CLK10K_1: std_logic;
signal CLK200_1: std_logic;
begin
process(CLK20M)
variable count:integer range 0 to 9;
begin 
if CLK20M'event and CLK20M='1'then 
	if count = 9 then 
		CLK1M_1<=not CLK1M_1;
		count:=0;
	else
		count:=count+1;
	end if;
end if;
end process;
process(CLK1M_1)
variable count:integer range 0 to 49;
begin
if CLK1M_1'event and CLK1M_1='1'then
	if count = 49 then
		CLK10K_1<=not CLK10K_1;
		count:=0;
	else 
		count:=count+1;
	end if;
end if;
end process;
process(CLK10K_1)
variable count:integer range 0 to 24;
begin
if CLK10K_1'event and CLK10K_1='1'then
	if count = 24 then
		CLK200_1<=not CLK200_1;
		count:=0;
	else 
		count:=count+1;
	end if;
end if;
end process;
process(CLK200_1)
variable count:integer range 0 to 24;
begin
if CLK200_1'event and CLK200_1='1'then
	if count = 24 then
		CLK4_1<=not CLK4_1;
		count:=0;
	else 
		count:=count+1;
	end if;
end if;
end process;
CLK1M<=CLK1M_1;
CLK10K<=CLK10K_1;
CLK200<=CLK200_1;
CLK4 <=CLK4_1 ;
end;
