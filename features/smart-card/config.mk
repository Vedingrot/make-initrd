# SPDX-License-Identifier: GPL-3.0-or-later
$(call feature-requires,usb)

SMART_CARD_BIN		?= pcscd pkcs11-tool opensc-tool pkcs15-tool pkcs15-init pkcs15-crypt pcsc_scan
SMART_CARD_DATADIR	?= $(FEATURESDIR)/smart-card/data
SMART_CARD_FILES	?= $(wildcard $(SYSCONFDIR)/opensc) \
			   $(wildcard $(SYSCONFDIR)/opensc.conf) \
			   $(SYSCONFDIR)/reader.conf.d \
			   $(LIBDIR)/pcsc

SMART_CARD_PKCS11_MODULE ?=
SMART_CARD_UDEV_RULES ?= *fido-id.rules
