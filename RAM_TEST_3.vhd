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

ENTITY RAM_TEST_3 IS
PORT (
  clk : IN  STD_LOGIC;
  addr : IN  STD_LOGIC_VECTOR( 7 DOWNTO 0 );
  din  : IN  STD_LOGIC_VECTOR( 15 DOWNTO 0 );
  dout : OUT STD_LOGIC_VECTOR( 15 DOWNTO 0 );
  we   : IN  STD_LOGIC
);
END RAM_TEST_3;

ARCHITECTURE ram_arch OF RAM_TEST_3 IS

  CONSTANT INVALID_DATA : STD_LOGIC_VECTOR (15 DOWNTO 0) := (OTHERS => 'X');
  
  subtype DATA_RAM_WORD IS STD_LOGIC_VECTOR (15 DOWNTO 0);
  TYPE DATA_RAM_TABLE IS ARRAY (0 TO (2**8)-1) OF DATA_RAM_WORD; 

  SIGNAL data_ram : DATA_RAM_TABLE := DATA_RAM_TABLE'
  ( DATA_RAM_WORD'("1010000011110000"), --00   INPUT ACC 0xF0  - load first char
    DATA_RAM_WORD'("1110000011100000"), --01   OUTPUT ACC 0xE0 - update tx memory                      
    DATA_RAM_WORD'("0000000000000001"), --02   LOAD ACC 1      - Start Bit                       
    DATA_RAM_WORD'("1110000011111111"), --03   OUTPUT ACC 0xFF - Set serial port high          
    DATA_RAM_WORD'("0000000011001110"), --04   LOAD ACC 0      - wait loop
    DATA_RAM_WORD'("0100000000000001"), --05   ADD ACC 1       - Increment count    
    DATA_RAM_WORD'("1001110000000101"), --06   JUMP NC 0x05    - repeat 256 times       
    DATA_RAM_WORD'("1010000011100000"), --07   INPUT ACC 0xE0  - read character                     
    DATA_RAM_WORD'("0001000000000001"), --08   AND ACC 0X01    - mask bit0                   
    DATA_RAM_WORD'("1001000000001011"), --09   JUMP Z 0x0B     - if zero output              
    DATA_RAM_WORD'("0000000000000001"), --0A   LOAD ACC 1      - else set 1                        
    DATA_RAM_WORD'("1110000011111111"), --0B   OUTPUT ACC 0xFF - Set serial port bit                         
    DATA_RAM_WORD'("0000000011001110"), --0C   LOAD ACC 0      - wait loop                       
    DATA_RAM_WORD'("0100000000000001"), --0D   ADD ACC 1       - Increment count                         
    DATA_RAM_WORD'("1001110000001101"), --0E   JUMP NC 0x0D    - repeat 256 times                         
    DATA_RAM_WORD'("1010000011100000"), --0F   INPUT ACC 0xE0  - read character 

    DATA_RAM_WORD'("0001000000000010"), --10   AND ACC 0X02    - mask bit1 
    DATA_RAM_WORD'("1001000000010011"), --11   JUMP Z 0x13     - if zero output                           
    DATA_RAM_WORD'("0000000000000001"), --12   LOAD ACC 1      - else set 1                          
    DATA_RAM_WORD'("1110000011111111"), --13   OUTPUT ACC 0xFF - Set serial port bit                    
    DATA_RAM_WORD'("0000000011001110"), --14   LOAD ACC 0      - wait loop                             
    DATA_RAM_WORD'("0100000000000001"), --15   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110000010101"), --16   JUMP NC 0x15    - repeat 256 times                         
    DATA_RAM_WORD'("1010000011100000"), --17   INPUT ACC 0xE0  - read character                             
    DATA_RAM_WORD'("0001000000000100"), --18   AND ACC 0X04    - mask bit2                                   
    DATA_RAM_WORD'("1001000000011011"), --19   JUMP Z 0x1B     - if zero output                     
    DATA_RAM_WORD'("0000000000000001"), --1A   LOAD ACC 1      - else set 1                       
    DATA_RAM_WORD'("1110000011111111"), --1B   OUTPUT ACC 0xFF - Set serial port bit                        
    DATA_RAM_WORD'("0000000011001110"), --1C   LOAD ACC 0      - wait loop                           
    DATA_RAM_WORD'("0100000000000001"), --1D   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110000011101"), --1E   JUMP NC 0x1D    - repeat 256 times                          
    DATA_RAM_WORD'("1010000011100000"), --1F   INPUT ACC 0xE0  - read character   

    DATA_RAM_WORD'("0001000000001000"), --20   AND ACC 0X08    - mask bit3
    DATA_RAM_WORD'("1001000000100011"), --21   JUMP Z 0x23     - if zero output                           
    DATA_RAM_WORD'("0000000000000001"), --22   LOAD ACC 1      - else set 1                          
    DATA_RAM_WORD'("1110000011111111"), --23   OUTPUT ACC 0xFF - Set serial port bit                    
    DATA_RAM_WORD'("0000000011001110"), --24   LOAD ACC 0      - wait loop                             
    DATA_RAM_WORD'("0100000000000001"), --25   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110000100101"), --26   JUMP NC 0x25    - repeat 256 times                         
    DATA_RAM_WORD'("1010000011100000"), --27   INPUT ACC 0xE0  - read character                             
    DATA_RAM_WORD'("0001000000010000"), --28   AND ACC 0X10    - mask bit4                                  
    DATA_RAM_WORD'("1001000000101011"), --29   JUMP Z 0x2B     - if zero output                     
    DATA_RAM_WORD'("0000000000000001"), --2A   LOAD ACC 1      - else set 1                       
    DATA_RAM_WORD'("1110000011111111"), --2B   OUTPUT ACC 0xFF - Set serial port bit                        
    DATA_RAM_WORD'("0000000011001110"), --2C   LOAD ACC 0      - wait loop                           
    DATA_RAM_WORD'("0100000000000001"), --2D   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110000101101"), --2E   JUMP NC 0x2D    - repeat 256 times                          
    DATA_RAM_WORD'("1010000011100000"), --2F   INPUT ACC 0xE0  - read character      
  
    DATA_RAM_WORD'("0001000000100000"), --30   AND ACC 0X20    - mask bit5
    DATA_RAM_WORD'("1001000000110011"), --31   JUMP Z 0x33     - if zero output                           
    DATA_RAM_WORD'("0000000000000001"), --32   LOAD ACC 1      - else set 1                          
    DATA_RAM_WORD'("1110000011111111"), --33   OUTPUT ACC 0xFF - Set serial port bit                    
    DATA_RAM_WORD'("0000000011001110"), --34   LOAD ACC 0      - wait loop                             
    DATA_RAM_WORD'("0100000000000001"), --35   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110000110101"), --36   JUMP NC 0x35    - repeat 256 times                         
    DATA_RAM_WORD'("1010000011100000"), --37   INPUT ACC 0xE0  - read character                             
    DATA_RAM_WORD'("0001000001000000"), --38   AND ACC 0X40    - mask bit6                                  
    DATA_RAM_WORD'("1001000000111011"), --39   JUMP Z 0x3B     - if zero output                     
    DATA_RAM_WORD'("0000000000000001"), --3A   LOAD ACC 1      - else set 1                       
    DATA_RAM_WORD'("1110000011111111"), --3B   OUTPUT ACC 0xFF - Set serial port bit                        
    DATA_RAM_WORD'("0000000011001110"), --3C   LOAD ACC 0      - wait loop                           
    DATA_RAM_WORD'("0100000000000001"), --3D   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110000111101"), --3E   JUMP NC 0x3D    - repeat 256 times                          
    DATA_RAM_WORD'("1010000011100000"), --3F   INPUT ACC 0xE0  - read character   
	
    DATA_RAM_WORD'("0001000010000000"), --40   AND ACC 0X80    - mask bit7
    DATA_RAM_WORD'("1001000001000011"), --41   JUMP Z 0x43     - if zero output                           
    DATA_RAM_WORD'("0000000000000001"), --42   LOAD ACC 1      - else set 1                          
    DATA_RAM_WORD'("1110000011111111"), --43   OUTPUT ACC 0xFF - Set serial port bit                    
    DATA_RAM_WORD'("0000000011001110"), --44   LOAD ACC 0      - wait loop                             
    DATA_RAM_WORD'("0100000000000001"), --45   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110001000101"), --46   JUMP NC 0x45    - repeat 256 times                              
    DATA_RAM_WORD'("0000000000000000"), --47   LOAD ACC 0      - stop bit                           
    DATA_RAM_WORD'("1110000011111111"), --48   OUTPUT ACC 0xFF - Set serial port bit                          
    DATA_RAM_WORD'("0100000000000001"), --49   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110001001001"), --4A   JUMP NC 0x49    - repeat 256 times                         
    DATA_RAM_WORD'("0000000000000000"), --4B   LOAD ACC 0      - stop bit                           
    DATA_RAM_WORD'("1110000011111111"), --4C   OUTPUT ACC 0xFF - Set serial port bit                          
    DATA_RAM_WORD'("0100000000000001"), --4D   ADD ACC 1       - Increment count                          
    DATA_RAM_WORD'("1001110001001101"), --4E   JUMP NC 0x4D    - repeat 256 times    
    DATA_RAM_WORD'("1010000001010010"), --4F   INPUT ACC 52    - read instruction
	 
    DATA_RAM_WORD'("0100000000000001"), --50   ADD ACC 1       - increment address field
    DATA_RAM_WORD'("1110000001010010"), --51   OUT ACC 52       - update instruction                  
    DATA_RAM_WORD'("1010000011110000"), --52   INPUT ACC 0xF0  - execute instruction                     
    DATA_RAM_WORD'("1110000011100000"), --53   OUTPUT ACC 0xE0 - update tx memory                         
    DATA_RAM_WORD'("0001000011111111"), --54   AND ACC 0xFF    - is char NULL?                         
    DATA_RAM_WORD'("1001010000000010"), --55   JUMP NZ, 2      - no, TX                 
    DATA_RAM_WORD'("0000000011110000"), --56   LOAD ACC 0xF0               
    DATA_RAM_WORD'("1110000001010010"), --57   OUT ACC 52                        
    DATA_RAM_WORD'("1000000001010110"), --58   JUMP 56         - yes, halt                          
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
    DATA_RAM_WORD'("0000000000000000"), --E8                            
    DATA_RAM_WORD'("0000000000000000"), --E9                            
    DATA_RAM_WORD'("0000000000000000"), --EA                            
    DATA_RAM_WORD'("0000000000000000"), --EB                            
    DATA_RAM_WORD'("0000000000000000"), --EC                            
    DATA_RAM_WORD'("0000000000000000"), --ED                            
    DATA_RAM_WORD'("0000000000000000"), --EE                            
    DATA_RAM_WORD'("0000000000000000"), --EF 

    DATA_RAM_WORD'("0000000010110111"), --F0  H      = 0x48 inv 10110111
    DATA_RAM_WORD'("0000000010111010"), --F1  E      = 0x45 inv 10111010                         
    DATA_RAM_WORD'("0000000010110011"), --F2  L      = 0x4C inv 10110011                         
    DATA_RAM_WORD'("0000000010110011"), --F3  L      = 0x4C inv 10110011                           
    DATA_RAM_WORD'("0000000010110000"), --F4  O      = 0x4F inv 10110000                         
    DATA_RAM_WORD'("0000000011011111"), --F5  <SP>   = 0x20 inv 11011111                        
    DATA_RAM_WORD'("0000000010101000"), --F6  W      = 0x57 inv 10101000                    
    DATA_RAM_WORD'("0000000010110000"), --F7  O      = 0x4F inv 10110000                       
    DATA_RAM_WORD'("0000000010101101"), --F8  R      = 0x52 inv 10101101                  
    DATA_RAM_WORD'("0000000010110011"), --F9  L      = 0x4C inv 10110011                            
    DATA_RAM_WORD'("0000000010111011"), --FA  D      = 0x44 inv 10111011                        
    DATA_RAM_WORD'("0000000011110010"), --FB  <CR>   = 0x0D inv 11110010                       
    DATA_RAM_WORD'("0000000011110101"), --FC  <LF>   = 0x0A inv 11110101                        
    DATA_RAM_WORD'("0000000000000000"), --FD  <NULL> = 0x00                          
    DATA_RAM_WORD'("0000000000000000"), --FE                            
    DATA_RAM_WORD'("0000000000000000")  --FF 	 

  );
  
BEGIN

--  PROCESS ( addr, we )
--  BEGIN                              
--    dout <= data_ram( CONV_INTEGER(addr));
--    IF we='1'
--    THEN
--      data_ram( CONV_INTEGER(addr)) <= din;
--    END IF;     
--  END PROCESS;

  PROCESS ( clk )
  BEGIN  
	 if clk='1' and clk'event
	 then
		dout <= data_ram( CONV_INTEGER(addr));
		IF we='1'
		THEN
			data_ram( CONV_INTEGER(addr)) <= din;
		END IF; 
	END IF; 		
  END PROCESS;

END ram_arch;
