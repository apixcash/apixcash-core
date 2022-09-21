
Debian
====================
This directory contains files used to package apixcashd/apixcash-qt
for Debian-based Linux systems. If you compile apixcashd/apixcash-qt yourself, there are some useful files here.

## apixcash: URI support ##


apixcash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install apixcash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your apixcash-qt binary to `/usr/bin`
and the `../../share/pixmaps/apixcash128.png` to `/usr/share/pixmaps`

apixcash-qt.protocol (KDE)

