#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/energy/aine

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT  := cortex-a7

# Filesystems
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Partitions
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_VENDOR := system/vendor

BOARD_FLASH_BLOCK_SIZE := 13107
BOARD_BOOTIMAGE_PARTITION_SIZE ?= 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE ?= 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE ?= 157286400
BOARD_SYSTEMIMAGE_PARTITION_SIZE ?= 1205862400
BOARD_USERDATAIMAGE_PARTITION_SIZE ?= 2533342720

# Platform
BOARD_USES_SPRD_HARDWARE := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOOTLOADER_BOARD_NAME := sc8830

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.sc8830

# Inherit the prebuilt kernel files
include device/energy/aine-kernel/BoardConfigKernel.mk

# Inherit the proprietary files
-include vendor/energy/aine/BoardConfigVendor.mk
