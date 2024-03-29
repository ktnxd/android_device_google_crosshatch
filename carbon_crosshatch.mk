# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/crosshatch/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 10 QQ3A.200705.002 6506677 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:10/QQ3A.200705.002/6506677:user/release-keys

$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)
