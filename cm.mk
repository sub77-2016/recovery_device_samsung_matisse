$(call inherit-product, device/samsung/matisselte/full_matisselte.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_RELEASE_NAME := matisselte
PRODUCT_NAME := cm_matisselte
