-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.polynomial_types.all;

entity polynomial_topentity_0 is
  port(eta    : in polynomial_types.tup5;
       eta1   : in signed(15 downto 0);
       result : out signed(15 downto 0));
end;

architecture structural of polynomial_topentity_0 is
  signal a0            : signed(15 downto 0);
  signal a13           : signed(15 downto 0);
  signal a12           : signed(15 downto 0);
  signal a11           : signed(15 downto 0);
  signal a10           : signed(15 downto 0);
  signal a14           : polynomial_types.array_of_signed_16(0 to 4);
  signal ws            : polynomial_types.array_of_signed_16(0 to 5);
  signal a14_app_arg   : polynomial_types.array_of_signed_16(0 to 4);
  signal a14_app_arg_0 : polynomial_types.array_of_signed_16(0 to 4);
  signal a14_app_arg_1 : polynomial_types.array_of_signed_16(0 to 4);
  signal a14_app_arg_2 : polynomial_types.array_of_signed_16(0 to 3);
  signal a14_app_arg_3 : polynomial_types.array_of_signed_16(0 to 2);
  signal a14_app_arg_4 : polynomial_types.array_of_signed_16(0 to 1);
  signal result_0      : signed(15 downto 0);
  signal result_1      : signed(15 downto 0);
  signal x             : signed(15 downto 0);
  signal a14_app_arg_5 : polynomial_types.array_of_signed_16(0 to 4);
  signal a14_app_arg_6 : polynomial_types.array_of_signed_16(0 to 3);
  signal a14_app_arg_7 : polynomial_types.array_of_signed_16(0 to 2);
  signal a14_app_arg_8 : polynomial_types.array_of_signed_16(0 to 1);
  signal a14_app_arg_9 : polynomial_types.array_of_signed_16(0 to 0);
begin
  a0 <= eta.tup5_sel4;
  
  a13 <= eta.tup5_sel3;
  
  a12 <= eta.tup5_sel2;
  
  a11 <= eta.tup5_sel1;
  
  a10 <= eta.tup5_sel0;
  
  -- last begin 
  result <= ws(ws'high);
  -- last end
  
  -- zipWith begin
  zipwith : for i in a14'range generate
  begin
    polynomial_topentity_specf_0 : entity polynomial_topentity_specf
  port map
  (result => a14(i)
  ,x => a14_app_arg_0(i)
  ,y => a14_app_arg(i));
  end generate;
  -- zipWith end
  
  ws <= polynomial_types.array_of_signed_16'(signed'(to_signed(0,16)) & a14);
  
  -- init begin
  a14_app_arg <= ws(0 to ws'high - 1);
  -- init end
  
  -- zipWith begin
  zipwith_1 : for i_0 in a14_app_arg_0'range generate
  begin
    a14_app_arg_0(i_0) <= resize(a14_app_arg_5(i_0) * a14_app_arg_1(i_0), 16);
  end generate;
  -- zipWith end
  
  a14_app_arg_1 <= polynomial_types.array_of_signed_16'(signed'(result_0) & a14_app_arg_2);
  
  a14_app_arg_2 <= polynomial_types.array_of_signed_16'(signed'(result_1) & a14_app_arg_3);
  
  a14_app_arg_3 <= polynomial_types.array_of_signed_16'(signed'(x) & a14_app_arg_4);
  
  a14_app_arg_4 <= polynomial_types.array_of_signed_16'(eta1
                                                       ,to_signed(1,16));
  
  result_0 <= resize(result_1 * eta1, 16);
  
  result_1 <= resize(x * eta1, 16);
  
  x <= resize(eta1 * eta1, 16);
  
  a14_app_arg_5 <= polynomial_types.array_of_signed_16'(signed'(a10) & a14_app_arg_6);
  
  a14_app_arg_6 <= polynomial_types.array_of_signed_16'(signed'(a11) & a14_app_arg_7);
  
  a14_app_arg_7 <= polynomial_types.array_of_signed_16'(signed'(a12) & a14_app_arg_8);
  
  a14_app_arg_8 <= polynomial_types.array_of_signed_16'(signed'(a13) & a14_app_arg_9);
  
  a14_app_arg_9 <= polynomial_types.array_of_signed_16'(0 => a0);
end;
