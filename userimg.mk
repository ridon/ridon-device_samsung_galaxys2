INSTALLED_SYSTEMIMAGE_TARGET := $(PRODUCT_OUT)/system.ext4.img
INSTALLED_USERDATAIMAGE_TARGET := $(PRODUCT_OUT)/data.ext4.img

$(INSTALLED_SYSTEMIMAGE_TARGET): $(INSTALLED_SYSTEMIMAGE)
	@echo -e ${CL_INS}"Install system fs image: $@"${CL_RST}
	$(hide) mv $(INSTALLED_SYSTEMIMAGE) $(INSTALLED_SYSTEMIMAGE_TARGET)

$(INSTALLED_USERDATAIMAGE_TARGET): $(BUILT_USERDATAIMAGE_TARGET)

systemimage: $(INSTALLED_SYSTEMIMAGE_TARGET)
