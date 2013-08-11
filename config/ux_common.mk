# Set audio
PRODUCT_PROPERTY_OVERRIDES += \
  ro.config.ringtone=Themos.ogg \
  ro.config.notification_sound=Proxima.ogg \
  ro.config.alarm_alert=Cesium.ogg

# init.d support
PRODUCT_COPY_FILES += \
    vendor/ux/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/ux/prebuilt/common/etc/init.ux.rc:root/init.ux.rc

# userinit support
PRODUCT_COPY_FILES += \

# Goo Manager
PRODUCT_PROPERTY_OVERRIDES += \
ro.goo.developerid=CXRDev
ro.goo.rom=cxr_$(TARGET_PRODUCT) \
ro.goo.version=1

    
vendor/ux/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Libs
PRODUCT_COPY_FILES += \
    
vendor/ux/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/ux/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/ux/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/ux/prebuilt/common/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/ux/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/ux/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# T-Mobile theme engine
include vendor/ux/config/themes_common.mk

# embed superuser into settings 
SUPERUSER_EMBEDDED := true
