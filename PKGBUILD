# Maintainer: Andrey Alekseev <andrey.android7890@gmail.com>

pkgname=('bootsplash-theme-linux-srbija')
pkgver=1.0
pkgrel=1
arch=('x86_64')
pkgdesc="Simple Manjaro Bootsplash with Android Srbija theme"
license=('GPL')
depends=()
optdepends=('bootsplash-systemd: for bootsplash functionality')
builddepends=('imagemagick')
options=('!libtool' '!emptydirs')

source=('bootsplash-packer'
	'bootsplash-theme-linux-srbija.sh'
	'bootsplash-theme-linux-srbija.initcpio_install'
	'logo.gif'
	'spinner.gif')

sha256sums=('SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP')

build() {
  cd "$srcdir"
  sh ./bootsplash-theme-linux-srbija.sh
}

package_bootsplash-theme-linux-srbija() {
  pkgdesc="Simple Manjaro Bootsplash with Android Srbija theme"
  cd "$srcdir"

  install -Dm644 "$srcdir/bootsplash-theme-linux-srbija" "$pkgdir/usr/lib/firmware/bootsplash-themes/linux-srbija/bootsplash"
  install -Dm644 "$srcdir/bootsplash-theme-linux-srbija.initcpio_install" "$pkgdir/usr/lib/initcpio/install/bootsplash-theme-linux-srbija"
}
