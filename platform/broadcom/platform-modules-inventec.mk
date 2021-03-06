# Inventec d7032q28b and d7054q28b Platform modules

INVENTEC_D7032Q28B_PLATFORM_MODULE_VERSION = 1.1.0
INVENTEC_D7054Q28B_PLATFORM_MODULE_VERSION = 1.1.0

export INVENTEC_D7032Q28B_PLATFORM_MODULE_VERSION
export INVENTEC_D7054Q28B_PLATFORM_MODULE_VERSION

INVENTEC_D7032Q28B_PLATFORM_MODULE = platform-modules-d7032q28b_$(INVENTEC_D7032Q28B_PLATFORM_MODULE_VERSION)_amd64.deb
$(INVENTEC_D7032Q28B_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-inventec
$(INVENTEC_D7032Q28B_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(INVENTEC_D7032Q28B_PLATFORM_MODULE)_PLATFORM = x86_64-inventec_d7032q28b-r0
SONIC_DPKG_DEBS += $(INVENTEC_D7032Q28B_PLATFORM_MODULE)

INVENTEC_D7054Q28B_PLATFORM_MODULE = platform-modules-d7054q28b_$(INVENTEC_D7054Q28B_PLATFORM_MODULE_VERSION)_amd64.deb
$(INVENTEC_D7054Q28B_PLATFORM_MODULE)_PLATFORM = x86_64-inventec_d7054q28b-r0
$(eval $(call add_extra_package,$(INVENTEC_D7032Q28B_PLATFORM_MODULE),$(INVENTEC_D7054Q28B_PLATFORM_MODULE)))
