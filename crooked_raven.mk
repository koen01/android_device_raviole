# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)
$(call inherit-product, device/google/raviole/device-statix.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220605.009.B1 8650216 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220605.009.B1/8650216:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
