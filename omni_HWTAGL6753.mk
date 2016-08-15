# Release name
PRODUCT_RELEASE_NAME := TAG-L01

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/HWTAG-L6753/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := HWTAG-L6753
PRODUCT_NAME := omni_HWTAGL6753
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := HUAWEI TAG-L01
PRODUCT_MANUFACTURER := HUAWEI
