################################################################################
#
# systemtap
#
################################################################################

SYSTEMTAP_VERSION = 3.2
SYSTEMTAP_SITE = https://sourceware.org/systemtap/ftp/releases/systemtap-$(SYSTEMTAP_VERSION).tar.gz
SYSTEMTAP_SOURCE = systemtap-$(SYSTEMTAP_VERSION).tar.gz
SYSTEMTAP_DEPENDENCIES = zlib elfutils

SYSTEMTAP_INSTALL_STAGING = YES

SYSTEMTAP_INSTALL_TARGET = NO

$(eval $(autotools-package))
