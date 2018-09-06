# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3
DESCRIPTION="Formatted C++20 stdlib man pages (cppreference)."
HOMEPAGE="https://github.com/jeaye/stdman"
EGIT_REPO_URI="https://github.com/jeaye/stdman.git"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=app-arch/gzip-1.8
        >=www-client/elinks-0.12_pre6-r4"
RDEPEND="sys-apps/man-db"