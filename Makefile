VERSION=0.2

.PHONY: all build-deb

all: build-deb

clean:
	rm -rf build/*

build-deb:
	mkdir -p build/deb/DEBIAN build/deb/lib/udev/rules.d build/deb/usr/share/pulseaudio/alsa-mixer/profile-sets build/deb/usr/share/pulseaudio/alsa-mixer/paths
	cp control build/deb/DEBIAN/
	cp 91-pulseaudio-steelseries-arctis-5.rules build/deb/lib/udev/rules.d/
	cp steelseries-arctis-5-usb-audio.conf build/deb/usr/share/pulseaudio/alsa-mixer/profile-sets/
	cp steelseries-arctis-5-output-game.conf build/deb/usr/share/pulseaudio/alsa-mixer/paths/
	cp steelseries-arctis-5-output-chat.conf build/deb/usr/share/pulseaudio/alsa-mixer/paths/
	dpkg-deb --build build/deb build/pulseaudio-steelseries-arctis-5_${VERSION}_all.deb

