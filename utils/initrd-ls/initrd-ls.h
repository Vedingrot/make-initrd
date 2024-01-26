// SPDX-License-Identifier: GPL-3.0-or-later
#ifndef INITRD_LS_H
#define INITRD_LS_H

#include "initrd-cpio.h"

enum flags {
	SHOW_COMPRESSION = (1 << 1),
	SHOW_NAME_ONLY   = (1 << 2),
	SHOW_NO_MTIME    = (1 << 3),
	SHOW_BRIEF       = (1 << 4),
};

int preformat(struct cpio_header *header);
int show_header(struct cpio_header *header);

#endif /* INITRD_LS_H */
