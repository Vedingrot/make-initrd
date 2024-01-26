# SPDX-License-Identifier: GPL-3.0-or-later
FILESYSTEM_PATTERN_SET =
FILESYSTEM_PATTERN_SET += alias:^fs-
FILESYSTEM_PATTERN_SET += not-filename:.*/kernel/arch/.*
FILESYSTEM_PATTERN_SET += not-filename:.*/net/.*
MODULES_PATTERN_SETS += FILESYSTEM_PATTERN_SET
