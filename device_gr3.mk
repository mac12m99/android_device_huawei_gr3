$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/gr3/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#vendor tree
$(call inherit-product, vendor/huawei/gr3/gr3-vendor.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_pref_CONFIG := xxhdpi
DEVICE_PACKAGE_OVERLAYS += device/huawei/gr3/overlay


# hardware specifics
PRODUCT_COPY_FILES += \
    device/huawei/gr3/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/huawei/gr3/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/huawei/gr3/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/huawei/gr3/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/huawei/gr3/rootdir/init.aee.rc:root/init.aee.rc \
	device/huawei/gr3/rootdir/init.project.rc:root/init.project.rc \
	device/huawei/gr3/rootdir/init.modem.rc:root/init.modem.rc \
   device/huawei/gr3/recovery/root/fstab.mt6735:root/fstab.mt6735  \
	device/huawei/gr3/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/huawei/gr3/rootdir/meta_init.rc:root/meta_init.rc \
	device/huawei/gr3/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/huawei/gr3/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/huawei/gr3/rootdir/meta_init.modem.rc:root/factory_init.rc \
	device/huawei/gr3/rootdir/meta_init.modem.rc:root/factory_init.project.rc \
	device/huawei/gr3/rootdir/init.rc:root/init.rc \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# CM's Snap camera
PRODUCT_PACKAGES += \
	Snap

# MTK's XLog needed for Engineer Mode
PRODUCT_PACKAGES += \
 	libxlog

# Gralloc
PRODUCT_PACKAGES += \
   	libgralloc_extra

# Bluetooth
PRODUCT_PACKAGES += \
	libbt-vendor

# ANT
PRODUCT_PACKAGES += \
	libantradio \
	antradio_app \
	ANT_RAM_CODE_E1.BIN \
	ANT_RAM_CODE_E2.BIN \
	AntHalService \
	com.dsi.ant.antradio_library

# ANT Permissions
PRODUCT_COPY_FILES += \
	external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Wifi
PRODUCT_PACKAGES += \
    	lib_driver_cmd_mt66xx \
    	libwpa_client \
    	hostapd \
    	dhcpcd.conf \
    	wpa_supplicant \
    	wpa_supplicant.conf \
   	
# Audio
PRODUCT_PACKAGES += \
    	audio.a2dp.default \
    	audio_policy.default \
    	audio_policy.stub \
    	audio.r_submix.default \
    	audio.usb.default \
    	libaudio-resampler \
    	tinymix \
    	libtinyalsa \
    	libtinycompress \
    	librs_jni \
	    libtinyxml

# Audio profiles used to address the correct audio devices for headset, etc.
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    	$(LOCAL_PATH)/configs/audio_device.xml:system/etc/audio_device.xml \
    	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    	$(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf

# Charger
PRODUCT_PACKAGES += \
      	charger_res_images

# Live Display
PRODUCT_PACKAGES += \
	libjni_livedisplay

# Torch
PRODUCT_PACKAGES += \
    	Torch

# Network dependency
PRODUCT_PACKAGES += \
    	libifaddrs	

# STk
PRODUCT_PACKAGES += \
    	Stk

# FM Radio
PRODUCT_PACKAGES += \
     	FmRadio \
     	libfmjni \
	libfmmt6620 \
        libfmmt6628 \
        libfmmt6627 \
        libfmmt6630 \
        libfmcust 

# Media	
PRODUCT_COPY_FILES += \
    	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \

# Thermal
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    	$(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    	$(LOCAL_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    	$(LOCAL_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
ro.persist.partition.support=no \
ro.cip.partition.support=no \
debug.hwui.render_dirty_regions=false 
