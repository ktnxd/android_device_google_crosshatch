# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/blueline/device-carbon.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 10 QQ3A.200705.002 6506677 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:10/QQ3A.200705.002/6506677:user/release-keys

$(call inherit-product-if-exists, vendor/google/blueline/blueline-vendor.mk)
