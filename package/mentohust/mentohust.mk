################################################################################
#
# mentohust
#
################################################################################

MENTOHUST_VERSION = 0.3.1
MENTOHUST_SITE = http://code.google.com/p/mentohust/downloads/list
MENTOHUST_SOURCE = mentohust-$(MENTOHUST_VERSION).tar.gz
MENTOHUST_DEPENDENCIES = libpcap

define MENTOHUST_INSTALL_MENTOHUST_CONF
	$(INSTALL) -m 0644 -D package/mentohust/mentohust.conf \
		$(TARGET_DIR)/etc/mentohust.conf
endef

MENTOHUST_POST_INSTALL_TARGET_HOOKS += MENTOHUST_INSTALL_MENTOHUST_CONF

$(eval $(autotools-package))
