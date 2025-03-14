----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2025 05:05:50 PM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

    signal w_seg : std_logic_vector(6 downto 0):= (others => '0');

begin
    with i_Hex select
    w_seg   <= "1000000" when "0000", -- 1
               "1111001" when "0001", -- 2
               "0100100" when "0010", -- 3
               "0110000" when "0011", -- 4 
               "0010010" when "0100", -- 5
               "0000010" when "0101", -- 6
               "1111000" when "0110", -- 7
               "0000000" when "0111", -- 8
               "0011000" when "1000", -- 9
               "0001000" when "1001", -- A
               "0000011" when "1010", -- B
               "0100111" when "1011", -- C
               "0100001" when "1100", -- D
               "0000110" when "1101", -- E
               "0001110" when "1111", -- F
               "0000000" when others;

end Behavioral;
