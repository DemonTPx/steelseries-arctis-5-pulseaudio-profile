# SteelSeries Arctis 5 pulseaudio profile

The SteelSeries Arctis 5 is a gaming headset which has two stereo audio outputs. One for voice chat and one for the rest of the sound. It can be mixed between with a physical knob.

By default, pulseaudio only enables the voice chat output. This profile enables the second (game) output and the udev rule makes sure this profile is used when plugging in the device.

## You probably don't need this anymore!

This change has been [merged into pulseaudio since version 13.0](https://www.freedesktop.org/wiki/Software/PulseAudio/Notes/13.0/) and [has been backported to ubuntu](https://bugs.launchpad.net/ubuntu/+source/pulseaudio/+bug/1758736) (since pulseaudio version 11.1-1ubuntu7.2.) That means you need to check if you are using at least this version. If you do so, **don't install this configuration** as it might stop your headset from working properly.

If you installed this configuration before updating to these pulseaudio versions, then please remove the configuration.

## Installing

### Ubuntu / Linux Mint

Download and install:

- [pulseaudio-steelseries-arctis-5_0.3_all.deb](https://github.com/DemonTPx/steelseries-arctis-5-pulseaudio-profile/releases/download/0.3/pulseaudio-steelseries-arctis-5_0.3_all.deb)

After that, plug in the device to see if it works.

### From source

Install from by copying the following files:

- `steelseries-arctis-5-output-game.conf` and `steelseries-arctis-5-output-chat.conf` to `/usr/share/pulseaudio/alsa-mixer/paths/`
- `steelseries-arctis-5-usb-audio.conf` to `/usr/share/pulseaudio/alsa-mixer/profile-sets/`
- `91-pulseaudio-steelseries-arctis-5.rules` to `/lib/udev/rules.d/`

Restart pulseaudio:

    pulseaudio -k
    pulseaudio --start

After that, plug in the device to see if it works.
