-- =============================================================================================================
-- *
-- * Copyright (c) M.Freeman
-- *
-- * File Name: ram.vhd
-- *
-- * Version: V1.0
-- *
-- * Release Date: 
-- *
-- * Author(s): M.Freeman
-- *
-- * Description: Simple RAM
-- *
-- * Change History:  $Author: $
-- *                  $Date: $
-- *                  $Revision: $
-- *
-- * Conditions of Use: THIS CODE IS COPYRIGHT AND IS SUPPLIED "AS IS" WITHOUT WARRANTY OF ANY KIND, INCLUDING,
-- *                    BUT NOT LIMITED TO, ANY IMPLIED WARRANTY OF MERCHANTABILITY AND FITNESS FOR A
-- *                    PARTICULAR PURPOSE.
-- *
-- * Notes:
-- *   
-- =============================================================================================================
--
-- INSTRUCTIONS
-- ------------
-- Load   ACC kk : 0000 XXXX KKKKKKKK
-- Add    ACC kk : 0100 XXXX KKKKKKKK
-- Add    ACC pp : 1100 XXXX PPPPPPPP
-- Input  ACC pp : 1010 XXXX PPPPPPPP
-- Output ACC pp : 1110 XXXX PPPPPPPP
-- Jump   U   aa : 1000 XXXX AAAAAAAA
-- Jump   Z   aa : 1001 00XX AAAAAAAA
-- Jump   C   aa : 1001 10XX AAAAAAAA
-- Jump  NZ   aa : 1001 01XX AAAAAAAA
-- Jump  NC   aa : 1001 11XX AAAAAAAA

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY RAM_TEST_1 IS
PORT (
  din  : IN  STD_LOGIC_VECTOR( 15 DOWNTO 0 );
  addr : IN  STD_LOGIC_VECTOR( 7 DOWNTO 0 );
  dout : OUT STD_LOGIC_VECTOR( 15 DOWNTO 0 );
  we   : IN  STD_LOGIC;
  clk : IN  STD_LOGIC
);
END RAM_TEST_1;

ARCHITECTURE ram_arch OF RAM_TEST_1 IS

  CONSTANT INVALID_DATA : STD_LOGIC_VECTOR (15 DOWNTO 0) := (OTHERS => 'X');
  
  subtype DATA_RAM_WORD IS STD_LOGIC_VECTOR (15 DOWNTO 0);
  TYPE DATA_RAM_TABLE IS ARRAY (0 TO (2**8)-1) OF DATA_RAM_WORD; 

  SIGNAL data_ram : DATA_RAM_TABLE := DATA_RAM_TABLE'
  ( DATA_RAM_WORD'("1010000000001010"), --00   INPUT ACC 10
    DATA_RAM_WORD'("0100000000001010"), --01   ADD ACC 10                       
    DATA_RAM_WORD'("1001110000000100"), --02   JUMP NC 04                       
    DATA_RAM_WORD'("0000000011111111"), --03   LOAD ACC 255                        
    DATA_RAM_WORD'("1110000000001010"), --04   OUTPUT ACC 10                         
    DATA_RAM_WORD'("1000000000000000"), --05   JUMP 00                       
    DATA_RAM_WORD'("0000000011111010"), --06   DATA 250          
    DATA_RAM_WORD'("0000000000000000"), --07                          
    DATA_RAM_WORD'("0000000000000000"), --08                          
    DATA_RAM_WORD'("0000000000000000"), --09                          
    DATA_RAM_WORD'("0000000000000000"), --0A                           
    DATA_RAM_WORD'("0000000000000000"), --0B                          
    DATA_RAM_WORD'("0000000000000000"), --0C                          
    DATA_RAM_WORD'("0000000000000000"), --0D                          
    DATA_RAM_WORD'("0000000000000000"), --0E                          
    DATA_RAM_WORD'("0000000000000000"), --0F   

    DATA_RAM_WORD'("0000000000000000"), --10  
    DATA_RAM_WORD'("0000000000000000"), --11                            
    DATA_RAM_WORD'("0000000000000000"), --12                            
    DATA_RAM_WORD'("0000000000000000"), --13                            
    DATA_RAM_WORD'("0000000000000000"), --14                            
    DATA_RAM_WORD'("0000000000000000"), --15                            
    DATA_RAM_WORD'("0000000000000000"), --16                            
    DATA_RAM_WORD'("0000000000000000"), --17                            
    DATA_RAM_WORD'("0000000000000000"), --18                            
    DATA_RAM_WORD'("0000000000000000"), --19                            
    DATA_RAM_WORD'("0000000000000000"), --1A                            
    DATA_RAM_WORD'("0000000000000000"), --1B                            
    DATA_RAM_WORD'("0000000000000000"), --1C                            
    DATA_RAM_WORD'("0000000000000000"), --1D                            
    DATA_RAM_WORD'("0000000000000000"), --1E                            
    DATA_RAM_WORD'("0000000000000000"), --1F    
    
    DATA_RAM_WORD'("0000000000000000"), --20  
    DATA_RAM_WORD'("0000000000000000"), --21                            
    DATA_RAM_WORD'("0000000000000000"), --22                            
    DATA_RAM_WORD'("0000000000000000"), --23                            
    DATA_RAM_WORD'("0000000000000000"), --24                            
    DATA_RAM_WORD'("0000000000000000"), --25                            
    DATA_RAM_WORD'("0000000000000000"), --26                            
    DATA_RAM_WORD'("0000000000000000"), --27                            
    DATA_RAM_WORD'("0000000000000000"), --28                            
    DATA_RAM_WORD'("0000000000000000"), --29                            
    DATA_RAM_WORD'("0000000000000000"), --2A                            
    DATA_RAM_WORD'("0000000000000000"), --2B                            
    DATA_RAM_WORD'("0000000000000000"), --2C                            
    DATA_RAM_WORD'("0000000000000000"), --2D                            
    DATA_RAM_WORD'("0000000000000000"), --2E                            
    DATA_RAM_WORD'("0000000000000000"), --2F    
   
    DATA_RAM_WORD'("0000000000000000"), --30  
    DATA_RAM_WORD'("0000000000000000"), --31                            
    DATA_RAM_WORD'("0000000000000000"), --32                            
    DATA_RAM_WORD'("0000000000000000"), --33                            
    DATA_RAM_WORD'("0000000000000000"), --34                            
    DATA_RAM_WORD'("0000000000000000"), --35                            
    DATA_RAM_WORD'("0000000000000000"), --36                            
    DATA_RAM_WORD'("0000000000000000"), --37                            
    DATA_RAM_WORD'("0000000000000000"), --38                            
    DATA_RAM_WORD'("0000000000000000"), --39                            
    DATA_RAM_WORD'("0000000000000000"), --3A                            
    DATA_RAM_WORD'("0000000000000000"), --3B                            
    DATA_RAM_WORD'("0000000000000000"), --3C                            
    DATA_RAM_WORD'("0000000000000000"), --3D                            
    DATA_RAM_WORD'("0000000000000000"), --3E                            
    DATA_RAM_WORD'("0000000000000000"), --3F    
    
    DATA_RAM_WORD'("0000000001001000"), --40  H = 0x48
    DATA_RAM_WORD'("0000000001000101"), --41  E = 0x45                          
    DATA_RAM_WORD'("0000000001001100"), --42  L = 0x4C                          
    DATA_RAM_WORD'("0000000001001100"), --43  L = 0x4C                           
    DATA_RAM_WORD'("0000000001001111"), --44  O = 0x4F                          
    DATA_RAM_WORD'("0000000000100000"), --45  <SP> = 0x20                          
    DATA_RAM_WORD'("0000000001010111"), --46  W = 0x57                         
    DATA_RAM_WORD'("0000000001001111"), --47  O = 0x4F                            
    DATA_RAM_WORD'("0000000000000000"), --48  R = 0x52                       
    DATA_RAM_WORD'("0000000001001100"), --49  L = 0x4C                           
    DATA_RAM_WORD'("0000000001000100"), --4A  D = 0x44                         
    DATA_RAM_WORD'("0000000000001101"), --4B  <CR> = 0x0D                       
    DATA_RAM_WORD'("0000000000001010"), --4C  <LF> = 0x0A                         
    DATA_RAM_WORD'("0000000000000000"), --4D  <NULL> = 0x00                          
    DATA_RAM_WORD'("0000000000000000"), --4E                            
    DATA_RAM_WORD'("0000000000000000"), --4F    
    
    DATA_RAM_WORD'("0000000000000000"), --50  
    DATA_RAM_WORD'("0000000000000000"), --51                            
    DATA_RAM_WORD'("0000000000000000"), --52                            
    DATA_RAM_WORD'("0000000000000000"), --53                            
    DATA_RAM_WORD'("0000000000000000"), --54                            
    DATA_RAM_WORD'("0000000000000000"), --55                            
    DATA_RAM_WORD'("0000000000000000"), --56                            
    DATA_RAM_WORD'("0000000000000000"), --57                            
    DATA_RAM_WORD'("0000000000000000"), --58                            
    DATA_RAM_WORD'("0000000000000000"), --59                            
    DATA_RAM_WORD'("0000000000000000"), --5A                            
    DATA_RAM_WORD'("0000000000000000"), --5B                            
    DATA_RAM_WORD'("0000000000000000"), --5C                            
    DATA_RAM_WORD'("0000000000000000"), --5D                            
    DATA_RAM_WORD'("0000000000000000"), --5E                            
    DATA_RAM_WORD'("0000000000000000"), --5F    
    
    DATA_RAM_WORD'("0000000000000000"), --60  
    DATA_RAM_WORD'("0000000000000000"), --61                            
    DATA_RAM_WORD'("0000000000000000"), --62                            
    DATA_RAM_WORD'("0000000000000000"), --63                            
    DATA_RAM_WORD'("0000000000000000"), --64                            
    DATA_RAM_WORD'("0000000000000000"), --65                            
    DATA_RAM_WORD'("0000000000000000"), --66                            
    DATA_RAM_WORD'("0000000000000000"), --67                            
    DATA_RAM_WORD'("0000000000000000"), --68                            
    DATA_RAM_WORD'("0000000000000000"), --69                            
    DATA_RAM_WORD'("0000000000000000"), --6A                            
    DATA_RAM_WORD'("0000000000000000"), --6B                            
    DATA_RAM_WORD'("0000000000000000"), --6C                            
    DATA_RAM_WORD'("0000000000000000"), --6D                            
    DATA_RAM_WORD'("0000000000000000"), --6E                            
    DATA_RAM_WORD'("0000000000000000"), --6F    
    
    DATA_RAM_WORD'("0000000000000000"), --70  
    DATA_RAM_WORD'("0000000000000000"), --71                            
    DATA_RAM_WORD'("0000000000000000"), --72                            
    DATA_RAM_WORD'("0000000000000000"), --73                            
    DATA_RAM_WORD'("0000000000000000"), --74                            
    DATA_RAM_WORD'("0000000000000000"), --75                            
    DATA_RAM_WORD'("0000000000000000"), --76                            
    DATA_RAM_WORD'("0000000000000000"), --77                            
    DATA_RAM_WORD'("0000000000000000"), --78                            
    DATA_RAM_WORD'("0000000000000000"), --79                            
    DATA_RAM_WORD'("0000000000000000"), --7A                            
    DATA_RAM_WORD'("0000000000000000"), --7B                            
    DATA_RAM_WORD'("0000000000000000"), --7C                            
    DATA_RAM_WORD'("0000000000000000"), --7D                            
    DATA_RAM_WORD'("0000000000000000"), --7E                            
    DATA_RAM_WORD'("0000000000000000"), --7F    
    
    DATA_RAM_WORD'("0000000000000000"), --80  
    DATA_RAM_WORD'("0000000000000000"), --81                            
    DATA_RAM_WORD'("0000000000000000"), --82                            
    DATA_RAM_WORD'("0000000000000000"), --83                            
    DATA_RAM_WORD'("0000000000000000"), --84                            
    DATA_RAM_WORD'("0000000000000000"), --85                            
    DATA_RAM_WORD'("0000000000000000"), --86                            
    DATA_RAM_WORD'("0000000000000000"), --87                            
    DATA_RAM_WORD'("0000000000000000"), --88                            
    DATA_RAM_WORD'("0000000000000000"), --89                            
    DATA_RAM_WORD'("0000000000000000"), --8A                            
    DATA_RAM_WORD'("0000000000000000"), --8B                            
    DATA_RAM_WORD'("0000000000000000"), --8C                            
    DATA_RAM_WORD'("0000000000000000"), --8D                            
    DATA_RAM_WORD'("0000000000000000"), --8E                            
    DATA_RAM_WORD'("0000000000000000"), --8F    
    
    DATA_RAM_WORD'("0000000000000000"), --90  
    DATA_RAM_WORD'("0000000000000000"), --91                            
    DATA_RAM_WORD'("0000000000000000"), --92                            
    DATA_RAM_WORD'("0000000000000000"), --93                            
    DATA_RAM_WORD'("0000000000000000"), --94                            
    DATA_RAM_WORD'("0000000000000000"), --95                            
    DATA_RAM_WORD'("0000000000000000"), --96                            
    DATA_RAM_WORD'("0000000000000000"), --97                            
    DATA_RAM_WORD'("0000000000000000"), --98                            
    DATA_RAM_WORD'("0000000000000000"), --99                            
    DATA_RAM_WORD'("0000000000000000"), --9A                            
    DATA_RAM_WORD'("0000000000000000"), --9B                            
    DATA_RAM_WORD'("0000000000000000"), --9C                            
    DATA_RAM_WORD'("0000000000000000"), --9D                            
    DATA_RAM_WORD'("0000000000000000"), --9E                            
    DATA_RAM_WORD'("0000000000000000"), --9F    
    
    DATA_RAM_WORD'("0000000000000000"), --A0  
    DATA_RAM_WORD'("0000000000000000"), --A1                            
    DATA_RAM_WORD'("0000000000000000"), --A2                            
    DATA_RAM_WORD'("0000000000000000"), --A3                            
    DATA_RAM_WORD'("0000000000000000"), --A4                            
    DATA_RAM_WORD'("0000000000000000"), --A5                            
    DATA_RAM_WORD'("0000000000000000"), --A6                            
    DATA_RAM_WORD'("0000000000000000"), --A7                            
    DATA_RAM_WORD'("0000000000000000"), --A8                            
    DATA_RAM_WORD'("0000000000000000"), --A9                            
    DATA_RAM_WORD'("0000000000000000"), --AA                            
    DATA_RAM_WORD'("0000000000000000"), --AB                            
    DATA_RAM_WORD'("0000000000000000"), --AC                            
    DATA_RAM_WORD'("0000000000000000"), --AD                            
    DATA_RAM_WORD'("0000000000000000"), --AE                            
    DATA_RAM_WORD'("0000000000000000"), --AF    
    
    DATA_RAM_WORD'("0000000000000000"), --B0  
    DATA_RAM_WORD'("0000000000000000"), --B1                            
    DATA_RAM_WORD'("0000000000000000"), --B2                            
    DATA_RAM_WORD'("0000000000000000"), --B3                            
    DATA_RAM_WORD'("0000000000000000"), --B4                            
    DATA_RAM_WORD'("0000000000000000"), --B5                            
    DATA_RAM_WORD'("0000000000000000"), --B6                            
    DATA_RAM_WORD'("0000000000000000"), --B7                            
    DATA_RAM_WORD'("0000000000000000"), --B8                            
    DATA_RAM_WORD'("0000000000000000"), --B9                            
    DATA_RAM_WORD'("0000000000000000"), --BA                            
    DATA_RAM_WORD'("0000000000000000"), --BB                            
    DATA_RAM_WORD'("0000000000000000"), --BC                            
    DATA_RAM_WORD'("0000000000000000"), --BD                            
    DATA_RAM_WORD'("0000000000000000"), --BE                            
    DATA_RAM_WORD'("0000000000000000"), --BF    
    
    DATA_RAM_WORD'("0000000000000000"), --C0  
    DATA_RAM_WORD'("0000000000000000"), --C1                            
    DATA_RAM_WORD'("0000000000000000"), --C2                            
    DATA_RAM_WORD'("0000000000000000"), --C3                            
    DATA_RAM_WORD'("0000000000000000"), --C4                            
    DATA_RAM_WORD'("0000000000000000"), --C5                            
    DATA_RAM_WORD'("0000000000000000"), --C6                            
    DATA_RAM_WORD'("0000000000000000"), --C7                            
    DATA_RAM_WORD'("0000000000000000"), --C8                            
    DATA_RAM_WORD'("0000000000000000"), --C9                            
    DATA_RAM_WORD'("0000000000000000"), --CA                            
    DATA_RAM_WORD'("0000000000000000"), --CB                            
    DATA_RAM_WORD'("0000000000000000"), --CC                            
    DATA_RAM_WORD'("0000000000000000"), --CD                            
    DATA_RAM_WORD'("0000000000000000"), --CE                            
    DATA_RAM_WORD'("0000000000000000"), --CF    
   
    DATA_RAM_WORD'("0000000000000000"), --D0  
    DATA_RAM_WORD'("0000000000000000"), --D1                            
    DATA_RAM_WORD'("0000000000000000"), --D2                            
    DATA_RAM_WORD'("0000000000000000"), --D3                            
    DATA_RAM_WORD'("0000000000000000"), --D4                            
    DATA_RAM_WORD'("0000000000000000"), --D5                            
    DATA_RAM_WORD'("0000000000000000"), --D6                            
    DATA_RAM_WORD'("0000000000000000"), --D7                            
    DATA_RAM_WORD'("0000000000000000"), --D8                            
    DATA_RAM_WORD'("0000000000000000"), --D9                            
    DATA_RAM_WORD'("0000000000000000"), --DA                            
    DATA_RAM_WORD'("0000000000000000"), --DB                            
    DATA_RAM_WORD'("0000000000000000"), --DC                            
    DATA_RAM_WORD'("0000000000000000"), --DD                            
    DATA_RAM_WORD'("0000000000000000"), --DE                            
    DATA_RAM_WORD'("0000000000000000"), --DF    
    
    DATA_RAM_WORD'("0000000000000000"), --E0  
    DATA_RAM_WORD'("0000000000000000"), --E1                            
    DATA_RAM_WORD'("0000000000000000"), --E2                            
    DATA_RAM_WORD'("0000000000000000"), --E3                            
    DATA_RAM_WORD'("0000000000000000"), --E4                            
    DATA_RAM_WORD'("0000000000000000"), --E5                            
    DATA_RAM_WORD'("0000000000000000"), --E6                            
    DATA_RAM_WORD'("0000000000000000"), --E7                            
    DATA_RAM_WORD'("0000000000000000"), --8                             
    DATA_RAM_WORD'("0000000000000000"), --E9                            
    DATA_RAM_WORD'("0000000000000000"), --EA                            
    DATA_RAM_WORD'("0000000000000000"), --EB                            
    DATA_RAM_WORD'("0000000000000000"), --EC                            
    DATA_RAM_WORD'("0000000000000000"), --ED                            
    DATA_RAM_WORD'("0000000000000000"), --EE                            
    DATA_RAM_WORD'("0000000000000000"), --EF    
    
    DATA_RAM_WORD'("0000000000000000"), --F0  
    DATA_RAM_WORD'("0000000000000000"), --F1                            
    DATA_RAM_WORD'("0000000000000000"), --F2                            
    DATA_RAM_WORD'("0000000000000000"), --F3                            
    DATA_RAM_WORD'("0000000000000000"), --F4                            
    DATA_RAM_WORD'("0000000000000000"), --F5                            
    DATA_RAM_WORD'("0000000000000000"), --F6                            
    DATA_RAM_WORD'("0000000000000000"), --F7                            
    DATA_RAM_WORD'("0000000000000000"), --F8                            
    DATA_RAM_WORD'("0000000000000000"), --F9                            
    DATA_RAM_WORD'("0000000000000000"), --FA                            
    DATA_RAM_WORD'("0000000000000000"), --FB                            
    DATA_RAM_WORD'("0000000000000000"), --FC                            
    DATA_RAM_WORD'("0000000000000000"), --FD                            
    DATA_RAM_WORD'("0000000000000000"), --FE                            
    DATA_RAM_WORD'("0000000000000000")  --FF    

  );
  
BEGIN

 -- PROCESS ( addr, we )
 -- BEGIN                              
 --   dout <= data_ram( CONV_INTEGER(addr));
   -- IF we='1'
  --  THEN
    --  data_ram( CONV_INTEGER(addr)) <= din;
    --END IF;
    --show_ram_10 <= data_ram(10);
  --END PROCESS;
  PROCESS ( clk )
  BEGIN  
	 IF clk='1' and clk'event
	 then
		dout <= data_ram( CONV_INTEGER(addr));
		IF we='1'
		THEN
			data_ram( CONV_INTEGER(addr)) <= din;
		END IF; 
	END IF; 		
  END PROCESS;
  
END ram_arch;
