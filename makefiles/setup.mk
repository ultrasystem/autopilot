#
# Path and tool setup
#

#
# Some useful paths.
#
# Note that in general we always keep directory paths with the separator
# at the end, and join paths without explicit separators. This reduces 
# the number of duplicate slashes we have lying around in paths,
# and is consistent with joining the results of $(dir) and $(notdir).
#
export X4_INCLUDE_DIR	 = $(abspath $(X4_BASE)/src/include)/
export X4_MODULE_SRC	 = $(abspath $(X4_BASE)/src)/
export X4_LIB_DIR	 = $(abspath $(X4_BASE)/src/lib)/
export X4_MK_DIR	 = $(abspath $(X4_BASE)/makefiles)/
export LINUX_SRC	 = $(abspath $(X4_BASE)/linux)/
export MAVLINK_SRC	 = $(abspath $(X4_BASE)/mavlink/include/mavlink/v1.0)/
export MAVLINK_SRC	 = $(abspath $(X4_BASE)/mavlink)/
export UAVCAN_DIR	 = $(abspath $(X4_BASE)/uavcan)/
export ROMFS_SRC	 = $(abspath $(X4_BASE)/ROMFS)/
export IMAGE_DIR	 = $(abspath $(X4_BASE)/Images)/
export BUILD_DIR	 = $(abspath $(X4_BASE)/Build)/

#
# Default include paths
#
export INCLUDE_DIRS	:= $(X4_MODULE_SRC) \
			   $(X4_MODULE_SRC)/modules/ \
			   $(X4_INCLUDE_DIR) \
			   $(X4_LIB_DIR)

#
# Tools
#
export MKFW		 = $(X4_BASE)/Tools/px_mkfw.py
export UPLOADER		 = $(X4_BASE)/Tools/px_uploader.py
export COPY		 = cp
export COPYDIR		 = cp -Rf
export REMOVE		 = rm -f
export RMDIR		 = rm -rf
export GENROMFS		 = genromfs
export TOUCH		 = touch
export MKDIR		 = mkdir
export FIND		 = find
export ECHO		 = echo
export UNZIP_CMD	 = unzip
export PYTHON		 = python
export OPENOCD		 = openocd

#
# Host-specific paths, hacks and fixups
#
export SYSTYPE		:= $(shell uname -s)

ifeq ($(SYSTYPE),Darwin)
# Eclipse may not have the toolchain on its path.
export PATH		:= $(PATH):/usr/local/bin
endif

#
# Makefile debugging.
#
export Q		:= $(if $(V),,@)
