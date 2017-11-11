# Maintainer: Daniel Hillenbrand <codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-desktop-cinnamon
pkgver=1.0.6
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
'mate-terminal'
'nemo-fileroller'
)

package() {
    cd "$pkgdir"

    mkdir -p etc/systemd/user/default.target.wants
    install -Dm644 "$srcdir/usr/lib/systemd/user/bbqlinux-cinnamon-settings.service" usr/lib/systemd/user/bbqlinux-cinnamon-settings.service
    ln -s /usr/lib/systemd/user/bbqlinux-cinnamon-settings.service etc/systemd/user/default.target.wants/

    mkdir -p usr/bin
    install -Dm755 "$srcdir/usr/bin/bbqlinux-cinnamon-settings.sh" usr/bin/bbqlinux-cinnamon-settings.sh
}
