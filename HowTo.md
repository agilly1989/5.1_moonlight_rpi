To run moonlight-embedded on a RPi2 (Untested on any other variant) with AC3 5.1 output

Pre-requisites:

* moonlight-embedded (https://github.com/irtimmer/moonlight-embedded)
* libasound2-plugins (`sudo apt-get install libasound2-plugins`) - Confirm it is installed by checking that `/usr/lib/arm-linux-gnueabihf/alsa-lib/libasound_module_pcm_a52.so` exists

--------------------------------------------------------

1. Download [bcm2835.conf](https://github.com/agilly1989/5.1_moonlight_rpi/blob/master/usr/share/alsa/cards/bcm2835.conf) and put it in `/usr/share/alsa/cards/`
2. Add `bcm2835_alsa cards.bcm2835` to `/usr/share/alsa/cards/aliases.conf`
3. Reboot your Rpi with `sudo reboot`
4. Check the new device exists with `aplay -L`, You should see something like
```
iec958:CARD=ALSA,DEV=0
bcm2835 ALSA, bcm2835 IEC958/HDMI
IEC958 (S/PDIF) Digital Audio Output
```
5. Edit your `~/.asoundrc` and add
```
pcm.!a52surround {
        type a52
        channels 6
        rate 44100
}
```
6. Run moonlight with the `-surround` and `-audio plug:a52surround` arguments (for example `moonlight stream -app <app> -surround -audio plug:a52surround <host_ip>`)

source: https://www.raspberrypi.org/forums/viewtopic.php?t=172536
