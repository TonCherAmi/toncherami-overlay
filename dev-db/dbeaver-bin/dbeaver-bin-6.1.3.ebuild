# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="Graphical development / admin tool for many popular database engines."
HOMEPAGE="http://dbeaver.io/"

LICENSE="GPL-2"

SRC_URI="http://dbeaver.io/files/${PV}/dbeaver-ce-${PV}-linux.gtk.x86_64.tar.gz"

SLOT="0"

KEYWORDS="~amd64"
IUSE=""

DEPEND=">=virtual/jre-1.7:* >=x11-libs/gtk+-2:2"
RDEPEND="${DEPEND}"

S="${WORKDIR}/dbeaver"

src_install() {
	insinto "/opt/${P}"

	exeinto "/opt/${P}"

	doins -r \
		"configuration" \
		"dbeaver.desktop" \
		"dbeaver.ini" \
		"dbeaver.png" \
		"features" \
		"icon.xpm" \
		"licenses" \
		"p2" \
		"plugins" \
		"readme.txt"

	doexe "dbeaver"

	dosym "/opt/${P}/dbeaver" "/usr/bin/dbeaver"
}
