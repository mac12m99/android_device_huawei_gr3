cd ../../../..
cd frameworks/av
patch -p1 < ../../device/huawei/gr3/patches/framework_av/0001-libmedia-stub-out-MTK-specific-bits-audio-working.patch
patch -p1 < ../../device/huawei/gr3/patches/framework_av/0002-camera.patch
patch -p1 < ../../device/huawei/gr3/patches/framework_av/0003-frameworks_av_fmradio_patch.patch
#patch -p1 < ../../device/huawei/gr3/patches/framework_av/0001_engineering_mode_audio_settings_frameworks_av.patch
patch -p1 < ../../device/huawei/gr3/patches/framework_av/frameworks_av_videorecording_fix.patch
cd ../..
cd frameworks/base
#patch -p1 < ../../device/huawei/gr3/patches/framework_base/0001-location-support-GNSS-extension-presumably-from-MTK.patch
#patch -p1 < ../../device/huawei/gr3/patches/framework_base/0002-location-add-some-logs-just-to-be-confident.patch
#patch -p1 < ../../device/huawei/gr3/patches/framework_base/0003-location-style-fix.patch
#patch -p1 < ../../device/huawei/gr3/patches/framework_base/0004_minimal_xlog_frameworks_base.patch
patch -p1 < ../../device/huawei/gr3/patches/framework_base/0005-Update-for-mtk.patch
#patch -p1 < ../../device/huawei/gr3/patches/framework_base/0001_engineering_mode_audio_settings_frameworks_base.patch
cd ../..
cd packages/apps/Settings/
#patch -p1 < ../../../device/huawei/gr3/patches/packages_apps_Settings/0001-multisim.patch
cd ../../..
cd frameworks/opt/telephony
patch -p1 < ../../../device/huawei/gr3/patches/framework_opt_telephony/0001-Update-for-mtk.patch
cd ../../..
cd hardware/libhardware
#patch -p1 < ../../device/huawei/gr3/patches/hardware_libhardware/fix-gps-light-audio.patch
#patch -p1 < ../../device/huawei/gr3/patches/hardware_libhardware/0001_engineering_mode_audio_settings_hardware_libhardware.patch
cd ../..
cd hardware/libhardware_legacy
patch -p1 < ../../device/huawei/gr3/patches/hardware_libhardware_legacy/patch-for-mtk.patch
cd ../..
cd packages/services/Telephony
patch -p1 < ../../../device/huawei/gr3/patches/packages_services_telephony/NeedsFakeIccid.patch
cd ../../..
cd system/core
#patch -p1 < ../../device/huawei/gr3/patches/system_core/fix-boot-for-mtk.patch
#patch -p1 < ../../device/huawei/gr3/patches/system_core/prevent-MTK-audio-and-silead-fingerprint-libs-from-spamming-log.patch
cd ../..
cd system/netd
patch -p1 < ../../device/huawei/gr3/patches/system_netd/hotpost-fix.patch
cd ../..
echo Patches Applied Successfully!
