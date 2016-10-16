
LOCAL_PATH := device/huawei/gr3

# inherit from the proprietary version
-include vendor/huawei/gr3/BoardConfigVendor.mk
USE_CAMERA_STUB := true
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Link against libxlog
TARGET_LDPRELOAD += libxlog.so

# Architecture
TARGET_BOARD_PLATFORM := mt6753
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
 
#32 bit
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
 
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
 
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_CPU_CORTEX_A53 := true

TARGET_NO_FACTORYIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := HWTAG-L6753
 
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

# Use prebuilt webviewchromium to cut down build time
#PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
 
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

TARGET_BOOTLOADER_BOARD_NAME := HWTAG-L6753
TARGET_OTA_ASSERT_DEVICE := HWTAG-L6753

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_NAME := 1461412683
BOARD_RAMDISK_OFFSET := 0x03f88000

#BOARD_CUSTOM_BOOTIMG_MK := device/huawei/gr3/mkbootimg.mk


#extracted from /proc/partinfo
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3867148288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11206656000
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

#for now lets use prebuilt
TARGET_PREBUILT_KERNEL := device/huawei/gr3/prebuilt/kernel

#TARGET_KERNEL_CONFIG := hq6753_65u_b2b_l1_defconfig
#TARGET_KERNEL_SOURCE := kernel/huawei/gr3
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
#KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-

#system.prop
TARGET_SYSTEM_PROP := device/huawei/gr3/system.prop

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# RIL
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# ANT
MTK_ANT_SUPPORT := yes
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# GPS
BOARD_GPS_LIBRARIES :=ture
MTK_GPS_SUPPORT :=ture
MTK_K64_SUPPORT :=ture
MTK_TC1_FEATURE :=ture

# Camera
USE_CAMERA_STUB := true

# Audio
TARGET_CPU_MEMCPY_OPT_DISABLE := true
BOARD_USES_MTK_AUDIO := true

# FM Radio
MTK_FM_SUPPORT := yes
MTK_FM_RX_SUPPORT := yes

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := device/huawei/gr3/egl.cfg

#recovery
TARGET_RECOVERY_FSTAB := device/huawei/gr3/recovery/root/fstab.mt6735
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_THEME := portrait_mdpi
#if sdcard0 is a /data/media emulated one
#RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_USES_MTK_AUDIO := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true
BOARD_CONNECTIVITY_VENDOR := MediaTek
MTK_ANT_SUPPORT := yes
#Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

TARGET_PROVIDES_INIT_RC := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# SELinux
BOARD_SEPOLICY_DIRS := \
       device/huawei/gr3/sepolicy

WITH_DEXPREOPT=false

#SELinux: MTK added
BOARD_SEPOLICY_UNION := \
    app.te \
    device.te \
    domain.te \
    file.te \
    file_contexts \
    fs_use \
    installd.te \
    net.te \
    netd.te \
    te_macros \
    vold.te \
    untrusted_app.te \
    platform_app.te \
    system_app.te \
    zygote.te \
    aal.te \
    akmd09911.te \
    akmd8963.te \
    akmd8975.te \
    ami304d.te \
    ist8303.te \
    mc6470d.te \
    qmcX983d.te \
    st480.te \
    af7133e.te \
    mmc3524xd.te \
    atcid.te \
    atci_service.te \
    audiocmdservice_atci.te \
    batterywarning.te \
    bmm050d.te \
    bmm056d.te \
    bmx056d.te \
    boot_logo_updater.te \
    br_app_data_service.te \
    BGW.te \
    ccci_fsd.te \
    ccci_mdinit.te \
    statusd.te \
    flashlessd.te \
    ccci_rpcd.te \
    eemcs_fsd.te \
    eemcs_mdinit.te \
    dhcp6c.te \
    dm_agent_binder.te \
    dualmdlogger.te \
    dumpstate.te \
    em_svr.te \
    enableswap.te \
    disableswap.te \
    factory.te \
    fota1.te \
    fuelgauged.te \
    geomagneticd.te \
    GoogleOtaBinder.te \
    gsm0710muxdmd2.te \
    gsm0710muxd.te \
    guiext-server.te \
    ipod.te \
    matv.te \
    mc6420d.te \
    mdlogger.te \
    mdnsd.te \
    memsicd3416x.te \
    bmc156d.te \
    memsicd.te \
    memsicp.te \
    meta_tst.te \
    mmc_ffu.te \
    mmp.te \
    mnld.te \
    mobile_log_d.te \
    mpud6050.te \
    msensord.te \
    mtk_6620_launcher.te \
    mtk_agpsd.te \
    mtkbt.te \
    muxreport.te \
    netdiag.te \
    nvram_agent_binder.te \
    nvram_backup_binder.te \
    nvram_daemon.te \
    orientationd.te \
    permission_check.te \
    poad.te \
    pppd_dt.te \
    pppd_via.te \
    pq.te \
    recovery.te \
    resmon.te \
    mtkrild.te \
    mtkrildmd2.te \
    viarild.te \
    s62xd.te \
    sn.te \
    epdg_wod.te \
    ipsec.te \
    terservice.te \
    thermald.te \
    thermal_manager.te \
    thermal.te \
    tiny_mkswap.te \
    tiny_swapon.te \
    vdc.te \
    volte_imcb.te \
    volte_ua.te \
    volte_stack.te \
    wmt_loader.te \
    icusbd.te \
    xlog.te \
    mobicore.te \
    install_recovery.te \
    program_binary.te \
    genfs_contexts

 

BOARD_SEPOLICY_UNION += \
	adbd.te \
	bluetooth.te \
	bootanim.te \
	clatd.te \
	drmserver.te \
	dhcp.te \
	dnsmasq.te \
	gpsd.te \
	hci_attach.te \
	healthd.te \
	hostapd.te \
	inputflinger.te \
	init.te \
	init_shell.te \
	isolated_app.te \
	keystore.te \
	kernel.te \
	lmkd.te \
	logd.te \
	mediaserver.te \
	mtp.te \
	nfc.te \
	racoon.te \
	radio.te \
	rild.te \
	runas.te \
	sdcardd.te \
	servicemanager.te \
	shared_relro.te \
	shell.te \
	system_app.te \
	system_server.te \
	surfaceflinger.te \
	tee.te \
	ueventd.te \
	uncrypt.te \
	watchdogd.te \
	wpa_supplicant.te \
	wpa.te \
	property.te \
	property_contexts \
	service.te \
	dmlog.te \
	MtkCodecService.te \
	ppl_agent.te \
	pvrsrvctl.te \
	wifi2agps.te \
	dex2oat.te \
	emdlogger.te \
	autokd.te \
	ppp.te \
	launchpppoe.te \
	sbchk.te \
	service_contexts \
	ril-3gddaemon.te \
	usbdongled.te \
	zpppd_gprs.te \
	md_ctrl.te \
	cmddumper.te \
	tunman.te 

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
BLOCK_BASED_OTA := false
