# SPDX-License-Identifier: GPL-3.0-or-later
.PHONY: depmod-image

depmod-image: create
	@$(VMSG) "Generating module dependencies in image ..."
	$Q/sbin/depmod -a -F "$(BOOTDIR)/System.map-$(KERNEL)" -b $(ROOTDIR) \
		"$(KERNEL)"

pack: depmod-image
