PRODUCT_VERSION_MAJOR := 3
PRODUCT_VERSION_MINOR := 2
PRODUCT_VERSION_PATCH := 1
PRODUCT_VERSION_EXTRA :=

ifneq ($(OFFICIAL_BUILD),true)
PRODUCT_VERSION_EXTRA += -UNOFFICIAL
endif

CALYXOS_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_PATCH)$(strip $(PRODUCT_VERSION_EXTRA))

# BUILD_NUMBER
# last 2 of year,    yy * 10000000
# PRODUCT_VERSION_MAJOR * 100000
# PRODUCT_VERSION_MINOR * 1000
# PRODUCT_VERSION_PATCH * 10
# Last digit reserved
# Examples:
# 3.0.0 -> 22300000, otatest 22300001
# 3.0.1 -> 22300010
# 3.1.0 -> 22301000
# 3.10.10 -> 22310100
