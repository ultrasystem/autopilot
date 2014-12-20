#
# Board-specific definitions for the PX4FMUv2
#

#
# Configure the toolchain
#
CONFIG_ARCH			 = CORTEXA9
CONFIG_BOARD			 = X4MMU_V1

include $(PX4_MK_DIR)/toolchain_gnu-arm-eabi.mk
