LOCAL_PATH := $(call my-dir)

define target_radio_files
$(notdir \
        $(wildcard $(LOCAL_PATH)/*.bin) \
        $(wildcard $(LOCAL_PATH)/*.img)
)
endef

-include $(LOCAL_PATH)/rosemary-firmware.mk
