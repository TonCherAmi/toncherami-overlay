# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 bash-completion-r1
DESCRIPTION="A small convenience wrapper for deluge-console."
HOMEPAGE="https://github.com/TonCherAmi/bt"
EGIT_REPO_URI="https://github.com/TonCherAmi/bt.git"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=net-p2p/deluge-1.3.15-r2"
RDEPEND="${DEPEND}"

src_install() {
	default
	newbashcomp doc/bt-completion.bash ${PN}
}
