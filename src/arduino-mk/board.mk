# run 'make show_boards' to show all boards
BOARD_TAG = avrpi328_8     # AVRPi-328 ATmega328 @ 8 MHz
#BOARD_TAG = avrpi328_12    # AVRPi-328 ATmega328 @ 12 MHz
#BOARD_TAG = avrpi328_16    # AVRPi-328 ATmega328 @ 16 MHz
#BOARD_TAG = avrpi32u4_8    # AVRPi-32U4 ATmega32U4 @ 8 MHz
#BOARD_TAG = avrpi32u4_8cat # AVRPi-32U4 ATmega32U4 @ 8 MHz Caterina bootloader
#BOARD_TAG = gert168        # Gertboard ATmega168 @ 12 MHz
#BOARD_TAG = gert328        # Gertboard ATmega328 @ 12 MHz
#BOARD_TAG = gertduino48    # Gertduino ATmega48 @ 8 MHz
#BOARD_TAG = gertduino328   # Gertduino ATmega328 @ 16 MHz
#BOARD_TAG = raspioduino    # RasPiO Duino ATmega328 @ 12 MHz

# where your custom libs are
USER_LIB_PATH := libs

# run 'make reset' to reset the board
RESET_CMD = avrpi -r

include ../../Arduino-Makefile/Arduino.mk
