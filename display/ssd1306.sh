i2c dev 0
i2c probe 0x3c
i2c mw 0x3C 0x00 0xAE  # Display OFF (sleep mode)

######################## initialize ssd1306 begin
i2c mw 0x3C 0x00 0xA8  # Set Multiplex Ratio
i2c mw 0x3C 0x00 0x3F  # value
i2c mw 0x3C 0x00 0xD3  # Set Display Offset
i2c mw 0x3C 0x00 0x00  # no vertical shift
i2c mw 0x3C 0x00 0x40  # Set Display Start Line to 000000b
i2c mw 0x3C 0x00 0xA1  # Set Segment Re-map, column address 127 ismapped to SEG0
i2c mw 0x3C 0x00 0xC8  # Set COM Output Scan Direction, remapped mode. Scan from COM7 to COM0
#i2c mw 0x3C 0x00 0xC0  # Set COM Output Scan Direction, remapped mode. Scan from COM7 to COM0
i2c mw 0x3C 0x00 0xDA  # Set COM Pins Hardware Configuration
#i2c mw 0x3C 0x00 0x12  # Alternative COM pin configuration, Disable COM Left/Right remap
#i2c mw 0x3C 0x00 0x02  # Sequential COM pin configuration,  Disable COM Left/Right remap
#i2c mw 0x3C 0x00 0x22  # Sequential COM pin configuration,  Enable Left/Right remap  (8pixels height)
i2c mw 0x3C 0x00 0x32  # Alternative COM pin configuration, Enable Left/Right remap   (4pixels height)
#i2c mw 0x3C 0x00 0x81  # Set Contrast Control
#i2c mw 0x3C 0x00 0xCF  # value, 0x7F max.
i2c mw 0x3C 0x00 0xA4  # display RAM content
i2c mw 0x3C 0x00 0xA6  # non-inverting display mode - black dots on white background
i2c mw 0x3C 0x00 0xD5  # Set Display Clock (Divide Ratio/Oscillator Frequency)
i2c mw 0x3C 0x00 0x80  # max fequency, no divide ratio
i2c mw 0x3C 0x00 0x8D  # Charge Pump Setting
i2c mw 0x3C 0x00 0x14  # enable charge pump
i2c mw 0x3C 0x00 0x20  # page addressing mode
i2c mw 0x3C 0x00 0x20  # horizontal addressing mode
#i2c mw 0x3C 0x00 0x21  # vertical addressing mode
#i2c mw 0x3C 0x00 0x22  # page addressing mode
######################## initialize ssd1306 end

######################## reset cursor begin
i2c mw 0x3C 0x00 0x21  # set column address
i2c mw 0x3C 0x00 0x00  #   set start address
i2c mw 0x3C 0x00 0x7F  #   set end address (127 max)
i2c mw 0x3C 0x00 0x22  # set page address
i2c mw 0x3C 0x00 0x00  #   set start address
i2c mw 0x3C 0x00 0x07  #   set end address (7 max)
######################## reset cursor end

i2c mw 0x3C 0x00 0xAE  # Display OFF (sleep mode)
i2c mw 0x3C 0x00 0xAF  # Display ON (normal mode)
