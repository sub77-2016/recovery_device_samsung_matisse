$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_RELEASE_NAME := matissewifi
PRODUCT_NAME := cm_matissewifi
