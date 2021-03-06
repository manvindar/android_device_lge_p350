# Boot Animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Inherit device configuration
$(call inherit-product, device/lge/p350/p350.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID=JDQ39E \
    BUILD_FINGERPRINT="lge/pecan/pecan:4.2.2/JDQ39E/20111018:user/release-keys" \
    PRIVATE_BUILD_DESC="pecan-user 4.2.2 JDQ39E 20111018 release-keys"

PRODUCT_DEVICE := p350
PRODUCT_NAME := cm_p350
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P350
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMe
PRODUCT_VERSION_DEVICE_SPECIFIC :=

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

