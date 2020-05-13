# My installation scripts

Make sure to run them with sudo privileges in ```~/```.

## gnome.sh

Debian based distros.
Installs a light version of gnome along with my favourite themes.
By default, everything is open source so you might have to install
some closed source firmware depending on your hardware.

### Personnal Notes

* Make sure to add the ```contrib``` and ```non-free``` sources to
```/etc/apt/sources.list```.

* For my Thinkpad R500, add the ```sudo apt install firmware-iwlwifii```
package.

* For my GTX 1070, add the nvidia-driver package.

* In order to play Steam games, just install the ```steam``` package.
