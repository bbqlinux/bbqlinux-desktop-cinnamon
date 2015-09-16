# Maintainer: Daniel Hillenbrand <codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-desktop-cinnamon
pkgver=1.0.0
pkgrel=1
pkgdesc="BBQLinux CINNAMON Desktop"
arch=('any')
url="https://github.com/bbqlinux/bbqlinux-desktop-cinnamon"
license=('GPL')
groups=('bbqlinux')
replaces=('bbqlinux-desktop-environment')
provides=('bbqlinux-desktop-environment')
depends=(

# lightdm
'lightdm'
'lightdm-bbqlinux-greeter'

# Theme
'bbqlinux-theme'
'bbqlinux-artwork'
'bbqlinux-config-gtk'

# cinnamon
'cinnamon'

# extras
'blueberry'
'gnome-keyring'

)

package() {
    cd "$pkgdir"
}
