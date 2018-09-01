cls
"D:\Arduino\arduino_1.8.3\hardware\tools\avr\bin\avr-as" -mmcu=atmega328p code\wait.s -o tmp\wait.o
"D:\Arduino\arduino_1.8.3\hardware\tools\avr\bin\avr-gcc" -c -mmcu=atmega328p code\main.c -o tmp\main.o
"D:\Arduino\arduino_1.8.3\hardware\tools\avr\bin\avr-ld" tmp\main.o tmp\wait.o -o tmp\main.elf
"D:\Arduino\arduino_1.8.3\hardware\tools\avr\bin\avr-objcopy" -O ihex -R .eeprom tmp\main.elf main.hex

