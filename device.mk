#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Rootdir
PRODUCT_PACKAGES += \
    fstab.sc8830 \
    init.board.rc \
    init.sc8830.rc \
    init.sc8830.usb.rc \
    init.storage.rc \
    ueventd.sc8830.rc

ifneq ($(filter eng userdebug,$(TARGET_BUILD_VARIANT)),)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0
endif

# Inherit the proprietary files
$(call inherit-product-if-exists, vendor/energy/aine/aine-vendor.mk)

# Inherit the prebuilt kernel files
$(call inherit-product-if-exists, device/energy/aine-kernel/kernel.mk)
