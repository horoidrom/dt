

# Inherit from jflte device
$(call inherit-product, device/samsung/j1pop3g/full_j1pop3g.mk)

# Inherit our stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_j1pop3g
