# Inherit common CalyxOS stuff
$(call inherit-product, vendor/calyx/config/common.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/calyx/config/telephony.mk)
