# SPDX-License-Identifier: GPL-3.0-or-later
FSCK_RUNTIME_FILES := $(shell $(call shell-export-vars) $(FEATURESDIR)/fsck/bin/find-files)

PUT_FEATURE_DIRS  += $(FSCK_DATADIR)
PUT_FEATURE_FILES += $(FSCK_FILES) $(FSCK_RUNTIME_FILES)
