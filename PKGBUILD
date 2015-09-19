# Maintainer: Daniel Hillenbrand <codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-desktop-cinnamon
pkgver=1.0.3
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
'cheese'
'gedit'
'gnome-keyring'
'gnome-calculator'
'gnome-screenshot'
'gnome-terminal'
)

package() {
    cd "$pkgdir"
    mkdir -p etc
    mkdir -p usr/bin

    install -Dm755 "$srcdir/usr/bin/bbqlinux-cinnamon-settings.sh" usr/bin/bbqlinux-cinnamon-settings.sh

    cp -R "$srcdir/etc/skel" etc/skel
}
