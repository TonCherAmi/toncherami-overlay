# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 bash-completion-r1

DESCRIPTION="A lightweight TV show manager."
HOMEPAGE="https://github.com/TonCherAmi/tvsm"
EGIT_REPO_URI="https://github.com/TonCherAmi/tvsm.git"
EGIT_BRANCH="dev"
EGIT_CLONE_TYPE="shallow"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-scheme/guile-2.0.12"
RDEPEND="${DEPEND}"

src_install() {
	default
	newbashcomp doc/tvsm-completion.bash ${PN}
}
