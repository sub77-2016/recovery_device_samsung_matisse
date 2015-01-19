#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product, vendor/samsung/matisse/matisse-vendor.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800


# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=ms013gDSRIL

# Default.prop overrides to get adb working at boot
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp

# Wifi
PRODUCT_COPY_FILES += \
    kernel/samsung/ms013g/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/samsung/ms013g/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    kernel/samsung/ms013g/drivers/staging/prima/firmware_bin/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    kernel/samsung/ms013g/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    kernel/samsung/ms013g/drivers/staging/prima/firmware_bin/WCNSS_qcom_wlan_nv.bin:system/etc/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab 
#	$(LOCAL_PATH)/rootdir/init.rc:recovery/root/init.rc

# Inherit from msm8226-common
$(call inherit-product, device/samsung/msm8226-common/msm8226.mk)
