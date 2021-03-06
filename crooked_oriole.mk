# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)
$(call inherit-product, device/google/raviole/device-statix.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SQ3A.220605.009.B1 8650216 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SQ3A.220605.009.B1/8650216:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
