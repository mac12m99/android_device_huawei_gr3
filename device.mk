#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/HWTAG-L6753/HWTAG-L6753-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/HWTAG-L6753/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/HWTAG-L6753/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# init.rc's
PRODUCT_COPY_FILES += \
	#device/huawei/HWTAG-L6753/recovery/root/init.mt6735.rc:root/init.mt6735.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.ssd.rc:root/init.ssd.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.xlog.rc:root/init.xlog.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.rc:root/init.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/huawei/HWTAG-L6753/recovery/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.aee.rc:root/init.aee.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.project.rc:root/init.project.rc \
	#device/huawei/HWTAG-L6753/recovery/root/init.modem.rc:root/init.modem.rc \
	device/huawei/HWTAG-L6753/recovery/root/fstab.mt6735:root/fstab.mt6735  \
	#device/huawei/HWTAG-L6753/recovery/root/ueventd.rc:root/ueventd.rc \
	device/huawei/HWTAG-L6753/recovery/root/factory_init.rc:root/factory_init.rc \
	device/huawei/HWTAG-L6753/recovery/root/factory_init.project.rc:root/factory_init.project.rc \
	device/huawei/HWTAG-L6753/recovery/root/meta_init.project.rc:root/meta_init.project.rc \
	device/huawei/HWTAG-L6753/recovery/root/meta_init.modem.rc:root/meta_init.modem.rc \
	device/huawei/HWTAG-L6753/recovery/root/meta_init.rc:root/meta_init.rc 

$(call inherit-product, build/target/product/full.mk)

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.exfat \
    fsck.exfat \
    mount.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.bootloader.mode=download \
ro.mount.fs=EXT4 \
ro.persist.partition.support=no

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_HWTAGL6753
PRODUCT_DEVICE := HWTAG-L6753
