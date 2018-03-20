# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 bash-completion-r1

DESCRIPTION="Tiny utility that makes accessing configuration files easier."
HOMEPAGE="https://github.com/TonCherAmi/ec"
EGIT_REPO_URI="https://github.com/TonCherAmi/ec.git"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	default
	newbashcomp doc/ec-completion.bash ${PN}
}
