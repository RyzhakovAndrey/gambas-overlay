# Distribute7d under the terms of the GN7U General Public License v2

EAPI="5"

inherit autotools eutils fdo-mime gnome2-utils

SLOT="3"
MY_PN="${PN}${SLOT}"
#MY_PN="${PN}

DESCRIPTION="Gambas is a free development environment based on a Basic interpreter with object extensions"
HOMEPAGE="http://gambas.sourceforge.net"

#SRC_URI="mirror://sourceforge/${PN}/${MY_PN}-${PV}.tar.bz2"
#https://gitlab.com/gambas/gambas/-/archive/3.12.2/gambas-3.12.2.tar.bz2
SRC_URI="https://gitlab.com/${PN}/${PN}/-/archive/${PV}/${P}.tar.bz2"


LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

#IUSE="+curl +net +qt5 +x11
#	bzip2 cairo crypt dbus examples gmp gnome gsl gstreamer gtk2 gtk3 httpd image-imlib image-io jit libxml mime
#	mysql ncurses odbc openal opengl openssl pcre pdf pop3 postgres qt5-opengl qt5-webkit sdl sdl-sound sdl2 sqlite v4l xml zlib"


IUSE="
	+curl +net +x11 +qt5
	gtk2 gtk3
	bzip2 cairo crypt dbus gmp gnome gsl gstreamer  httpd image-imlib image-io jit libxml mime
	mysql ncurses odbc openal opengl openssl pcre pdf pop3 postgres  sdl sdl-sound sdl2 sqlite v4l xml zlib
"
#qt5-opengl qt5-webkit
#examples


#  --disable-option-checking  ignore unrecognized --enable/--with options
#  --disable-FEATURE       do not include FEATURE (same as --enable-FEATURE=no)
#  --enable-FEATURE[=ARG]  include FEATURE [ARG=yes]
#  --enable-bzlib2                enable bzlib2 component (default: yes)
#  --enable-zlib                enable zlib component (default: yes)
#  --enable-mysql                enable mysql component (default: yes)
#  --enable-odbc                enable odbc component (default: yes)
#  --enable-postgresql                enable postgresql component (default: yes)
#  --enable-sqlite2                enable sqlite2 component (default: yes)
#  --enable-sqlite3                enable sqlite3 component (default: yes)
#  --enable-net                enable net component (default: yes)
#  --enable-curl                enable curl component (default: yes)
#  --enable-mime                enable mime component (default: yes)
#  --enable-pcre                enable pcre component (default: yes)
#  --enable-sdl                enable sdl component (default: yes)
#  --enable-sdlsound                enable sdlsound component (default: yes)
#  --enable-sdl2                enable sdl2 component (default: yes)
#  --enable-libxml                enable libxml component (default: yes)
#  --enable-xml                enable xml component (default: yes)
#  --enable-v4l                enable v4l component (default: yes)
#  --enable-crypt                enable crypt component (default: yes)
#  --enable-qt4                enable qt4 component (default: yes)
#  --enable-qt5                enable qt5 component (default: yes)
#  --enable-gtk                enable gtk component (default: yes)
#  --enable-gtk3                enable gtk3 component (default: yes)
#  --enable-opengl                enable opengl component (default: yes)
#  --enable-x11                enable x11 component (default: yes)
#  --enable-keyring                enable keyring component (default: yes)
#  --enable-pdf                enable pdf component (default: yes)
#  --enable-cairo                enable cairo component (default: yes)
#  --enable-imageio                enable imageio component (default: yes)
#  --enable-imageimlib                enable imageimlib component (default: yes)
#  --enable-dbus                enable dbus component (default: yes)
#  --enable-gsl                enable gsl component (default: yes)
#  --enable-gmp                enable gmp component (default: yes)
#  --enable-ncurses                enable ncurses component (default: yes)
#  --enable-media                enable media component (default: yes)
#  --enable-httpd                enable httpd component (default: yes)
#  --enable-openssl                enable openssl component (default: yes)
#  --enable-openal                enable openal component (default: yes)
#  --enable-maintainer-mode
#                          enable make rules and dependencies not useful (and
#                          sometimes confusing) to the casual installer
#  --enable-silent-rules   less verbose build output (undo: "make V=1")
#  --disable-silent-rules  verbose build output (undo: "make V=0")


REQUIRED_USE="
	cairo? ( qt5 x11 )
	gnome? ( qt5 x11 )
	gstreamer? ( qt5 x11 )
	gtk2? ( qt5 x11 )
	gtk3? ( qt5 x11 )
	image-imlib? ( qt5 x11 )
	image-io? ( qt5 x11 )
	net? ( curl pop3? ( mime ) )
	opengl? ( qt5 x11 )
	pdf? ( qt5 x11 )
	qt5? ( x11 )
	sdl? ( qt5 x11 )
	sdl-sound? ( sdl )
	sdl2? ( qt5 x11 )
	v4l? ( qt5 x11 )
"
#	|| ( qt5 gtk2 gtk3 )
#	qt5-opengl? ( qt5 )
#	qt5-webkit? ( qt5 )



RDEPEND="
	bzip2? ( app-arch/bzip2 )
	cairo? ( x11-libs/cairo )
	curl? ( net-misc/curl )
	dbus? ( sys-apps/dbus )
	gnome? ( gnome-base/gnome-keyring )
	gmp? ( dev-libs/gmp )
	gsl? ( sci-libs/gsl )
	gstreamer? ( media-libs/gst-plugins-base media-libs/gstreamer )
	gtk2? ( x11-libs/gtk+:2 )
	gtk3? ( x11-libs/gtk+:3 )
	jit? ( sys-devel/llvm )
	image-imlib? ( media-libs/imlib2 )
	image-io? ( dev-libs/glib x11-libs/gdk-pixbuf )
	libxml? ( dev-libs/libxml2 )
	mime? ( dev-libs/gmime )
	mysql?  ( virtual/mysql )
	ncurses? ( sys-libs/ncurses )
	odbc? ( dev-db/unixODBC )
	openal? ( media-libs/openal )
	opengl? ( media-libs/mesa )
	openssl? ( dev-libs/openssl )
	pcre? ( dev-libs/libpcre )
	pdf? ( app-text/poppler )
	postgres? ( virtual/postgresql-base )
	qt5? ( dev-qt/qtcore:5 dev-qt/qtgui:5 dev-qt/qtsvg:5 )
	sdl? ( media-libs/libsdl[opengl] media-libs/sdl-image media-libs/sdl-ttf )
	sdl-sound? ( media-libs/sdl-mixer )
	sdl2? ( media-libs/libsdl2 media-libs/sdl2-image media-libs/sdl2-mixer )
	v4l? ( virtual/jpeg:0 media-libs/libpng )
	x11? ( x11-libs/libX11 x11-libs/libXtst )
	xml? ( dev-libs/libxml2 dev-libs/libxslt )
	zlib? ( sys-libs/zlib )
"
#	qt5-opengl? ( dev-qt/qtwebkit:5 )
#	qt5-webkit? ( dev-qt/qtopengl:5 )




DEPEND="${RDEPEND}
	virtual/libintl"

#S="${WORKDIR}/${MY_PN}-${PV}"

autocrap_cleanup() {
	sed -e "/^\(AC\|GB\)_CONFIG_SUBDIRS(${1}[,)]/d" \
		-i "${S}/configure.ac" || die
	sed -e "/^ \(@${1}_dir@\|${1}\)/d" \
		-i "${S}/Makefile.am" || die
}


src_prepare() {

#	# gentoo-ism
	epatch "${FILESDIR}/${PN}-3.12.x-app-makefile.am.patch"
	epatch "${FILESDIR}/${PN}-3.12.x-main-makefile.am.patch"
##	epatch "${FILESDIR}/xdgutils.patch"

#	## deprecated
#	autocrap_cleanup sqlite2
#
#

	use_if_iuse bzip2 || autocrap_cleanup bzlib2
	use_if_iuse cairo || autocrap_cleanup cairo
	use_if_iuse crypt || autocrap_cleanup crypt
	use_if_iuse curl || autocrap_cleanup curl
	use_if_iuse dbus || autocrap_cleanup dbus
#	use_if_iuse examples || autocrap_cleanup examples
	use_if_iuse gsl || autocrap_cleanup gsl
	use_if_iuse gmp || autocrap_cleanup gmp
	use_if_iuse gnome || autocrap_cleanup keyring
	use_if_iuse gstreamer || autocrap_cleanup media
	use_if_iuse gtk2 || autocrap_cleanup gtk
	use_if_iuse gtk3 || autocrap_cleanup gtk3
	use_if_iuse httpd || autocrap_cleanup httpd
	use_if_iuse image-imlib || autocrap_cleanup imageimlib
	use_if_iuse image-io || autocrap_cleanup imageio
	use_if_iuse jit || autocrap_cleanup jit
	use_if_iuse libxml || autocrap_cleanup libxml
	use_if_iuse mime || autocrap_cleanup mime
	use_if_iuse mysql || autocrap_cleanup mysql
	use_if_iuse ncurses || autocrap_cleanup ncurses
	use_if_iuse net || autocrap_cleanup net
	use_if_iuse odbc || autocrap_cleanup odbc
	use_if_iuse openal || autocrap_cleanup openal
	use_if_iuse opengl || autocrap_cleanup opengl
	use_if_iuse openssl || autocrap_cleanup openssl
	use_if_iuse pcre || autocrap_cleanup pcre
	use_if_iuse pdf || autocrap_cleanup pdf
	use_if_iuse postgres || autocrap_cleanup postgresql
	use_if_iuse qt5 || autocrap_cleanup qt5
	use_if_iuse sdl || autocrap_cleanup sdl
	use_if_iuse sdl-sound || autocrap_cleanup sdlsound
	use_if_iuse sdl2 || autocrap_cleanup sdl2
	use_if_iuse sqlite || autocrap_cleanup sqlite
	use_if_iuse v4l || autocrap_cleanup v4l
	use_if_iuse x11 || autocrap_cleanup x11
	use_if_iuse xml || autocrap_cleanup xml
	use_if_iuse zlib || autocrap_cleanup zlib

#	eautoreconf
#	autoreconf -vi
	./reconf-all || die
}

src_configure() {
#	use_if_iuse qt5 && cd ${S}/gb.qt5 && \
#		econf $(use_enable qt5-opengl qtopengl) \
#			$(use_enable qt5-webkit qtwebkit)

	cd ${S} && econf \ 
		$(use_enable bzip2 bzlib2) \
		$(use_enable cairo) \
		$(use_enable crypt) \
		$(use_enable curl) \
		$(use_enable dbus) \
		$(use_enable gmp) \
		$(use_enable gnome keyring) \
		$(use_enable gsl) \
		$(use_enable gstreamer media) \
		$(use_enable gtk2) \
		$(use_enable gtk3) \
		$(use_enable httpd) \
		$(use_enable image-imlib imageimlib) \
		$(use_enable image-io imageio) \
		$(use_enable jit) \
		$(use_enable libxml) \
		$(use_enable mime) \
		$(use_enable mysql) \
		$(use_enable ncurses) \
		$(use_enable net) \
		$(use_enable odbc) \
		$(use_enable openal) \
		$(use_enable opengl) \
		$(use_enable openssl) \
		$(use_enable pcre) \
		$(use_enable pdf) \
		$(use_enable postgres postgresql) \
		$(use_enable qt5) \
		$(use_enable sdl) \
		$(use_enable sdl-sound sdlsound) \
		$(use_enable sdl2) \
		$(use_enable sqlite sqlite3) \
		$(use_enable v4l) \
		$(use_enable x11) \
		$(use_enable xml) \
		$(use_enable zlib)

#		$(use_enable bzip2 bzlib2) \
#		$(use_enable examples) \

}

src_install() {
#	emake DESTDIR="${D}" install -j1
	make DESTDIR="${D}" install -j1 || die

	dodoc AUTHORS ChangeLog NEWS README

	if use net ; then
		newdoc gb.net/src/doc/README gb.net-README
		newdoc gb.net/src/doc/changes.txt gb.net-ChangeLog
	fi
#
	if use pcre ; then
		newdoc gb.pcre/src/README gb.pcre-README
	fi
#
	if use qt5 ; then
		doicon "${S}/app/desktop/${MY_PN}.svg"
		domenu "${S}/app/desktop/${MY_PN}.desktop"

		doicon -s 64 -c mimetypes \
			"${S}/app/mime/application-x-gambasscript.png" \
			"${S}/app/mime/application-x-gambasserverpage.png" \
			"${S}/main/mime/application-x-gambas3.png"

		insinto /usr/share/mime/application
		doins "${S}/app/mime/application-x-gambasscript.xml" \
			"${S}/app/mime/application-x-gambasserverpage.xml" \
			"${S}/main/mime/application-x-gambas3.xml"
	fi
}

pkg_preinst() {
	if use qt5 ; then
		gnome2_icon_savelist
	fi
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update

	if use qt5 ; then
		gnome2_icon_cache_update
	fi
}

pkg_postrm() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update

	if use qt5 ; then
		gnome2_icon_cache_update
	fi
}
