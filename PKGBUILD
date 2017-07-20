# Contributor: Alex Peltzer <alex.peltzer@gmail.com>
# Maintainer: Alex Peltzer <alex.peltzer@gmail.com>

pkgname=eagerversions
pkgver=1.92
pkgrel=2
pkgdesc="A small tool to generate versions of utilized tools for the logfile."
arch=('any')
url="http://it.inf.uni-tuebingen.de/?page_id=161"
license=('custom')
depends=('sh')
source=("eager_versions.sh")
md5sums=('SKIP')
package() {
  mkdir -p "${pkgdir}/usr/bin"
  install -D -m755 "${srcdir}/eager_versions.sh" "${pkgdir}/usr/bin/eagerVersions"
}
