# SPDX-License-Identifier: GPL-3.0-or-later
ROOTFS_DIRS := $(shell $(call shell-export-vars) $(FEATURESDIR)/rootfs/bin/create-fstab dirs)
PUT_FEATURE_DIR += $(ROOTFS_DIRS)

$(call set-sysconfig,init,QUIET,$(RUNTIME_QUIET))
$(call set-sysconfig,init,LOGLEVEL,$(RUNTIME_DMESG_LOGLEVEL))
$(call set-sysconfig,init,CONSOLE_KEYSTROKE,$(RUNTIME_CONSOLE_KEYSTROKE))
