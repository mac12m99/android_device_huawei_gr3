# Release name
PRODUCT_RELEASE_NAME := gr3

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/gr3/device_gr3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gr3
PRODUCT_NAME := omni_gr3
PRODUCT_BRAND := huawei
PRODUCT_MODEL := gr3
PRODUCT_MANUFACTURER := huawei
