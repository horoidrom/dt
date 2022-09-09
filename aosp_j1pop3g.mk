#
# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Inherit from the common Open Source product configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := j1pop3g

# Custom unofficial build tag
TARGET_UNOFFICIAL_BUILD_ID := Horoid_test

# Inherit device configuration
$(call inherit-product, device/samsung/j1pop3g/device_j1pop3g.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/samsung/j1pop3g/overlay \

# Override build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PACKAGES += \
	Gallery2 \
	Launcher3 \
	Stk \

# Device identifier
PRODUCT_DEVICE := j1pop3g
PRODUCT_NAME := aosp_j1pop3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J110H
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
