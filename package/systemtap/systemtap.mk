################################################################################
#
# systemtap
#
################################################################################

SYSTEMTAP_VERSION = 3.3
SYSTEMTAP_SITE = https://sourceware.org/systemtap/ftp/releases
SYSTEMTAP_SOURCE = systemtap-$(SYSTEMTAP_VERSION).tar.gz
SYSTEMTAP_DEPENDENCIES = zlib elfutils

ifeq ($(call qstrip,$(BR2_ARCH)),arm)
SYSTEMTAP_CONF_OPTS = --without-python2-probes
SYSTEMTAP_CONF_OPTS += --without-python3-probes
endif

$(eval $(autotools-package))
