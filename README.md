# My installation scripts

Make sure to run them with sudo privileges in ```~/```.

## gnome.sh

Debian based distros.
Installs a light version of gnome along with my favourite themes.
By default, everything is open source so you might have to install
some closed source firmware depending on your hardware. Note that it
installs LightDM instead of Gnome Display Manager. The idea behind that
choice is to have a DM that allown to start on a lighter WM than
gnome (like i3, BSPWM, ...) without havind the DM bottlenecking when it comes
to performances.

### Personnal Notes

* Make sure to add the ```contrib``` and ```non-free``` sources to
```/etc/apt/sources.list```.

* For my Thinkpad R500, add the ```firmware-iwlwifii```
package.

* For my GTX 1070, add the nvidia-driver package.

* In order to play Steam games, just install the ```steam``` package.

## minimal_apps.sh

This scrips installs all the minimal, lightweight and keyboard centered
applications that I use for productivity on a daily basis. This part is
far from being complete and I am still trying to convert my heavy programs
to lighter alternatives all the time. However, as for today, it only installs the
following programs :

* Terminator : A terminal emulator and multiplexor. It fits perfectly in my
workflow. Indeed, I mainly work on text files but I often use some modern
GUI apps for music production, video editing, ... So I can't really make the
switch to a full tiling window manager. This multiplexor though allows me
to have a workflow comparable to the one of tiling window managers but inside
a stacking one like Gnome 3 and hence I get the best of both worlds.

* Vim and Neovim : My text editor of choice in Vim (and its recent continuation
Neovim). It is fully customizable and increases my productivity substantially.

* Ranger : A file manager that runs in terminal. Easy to use and fully scriptable.

* MPV : A really powerful and lightweight media player.

* SXIV :  Image viewer.

* Zathura : PDF Viewer.

* htop : A terminal based process manager.

* Sound server : For my minimal setup, I like to use the pulseaudio sound server on top
of alsa. Plus the packages alsa-utils and pulseaudio-utils gime me great
terminal based control over sound.

## desktop_apps.sh

Here are the GUI based full desktop applications that I use. Careful, some
of them might be really resource hungry so feel free to skip their installation on your machine.

* Browsers : I use Mozilla Firefox as my main browser. It is powerful, has
great support and allows some strong privacy and security options.
I strongly recommend to deactivate telemetry, use a pryvacy focussed search
engine like DuckDuckGo, deactivate remembering passwords, delete cookies when the
session is closed and never remember history. Furthermore I always use
ublock, no script and https everywhere. Another really good browser that I use
on a daily basis is Tor Browser. It allows you to send your browser data through the
Tor network. It is based on firefox and hence I user the same plugins as with firefox.
Note : Tor Browser gives you anonymity against network trafic analysing algorithms.
It doesn't protect you from leaking your own identity and once a matching point
is found it is easy to track you on Tor. Do not reveal you identity nor connect
to your own accounts on Tor.

### Personnal notes

* In order to install Tor Browser, you must first enable backports on Debian 10.
To do sa, add the following line to ```/etc/apt/sources.list``` :
```deb http://deb.debian.org/debian buster-backports main contrib```
and then install the Tor Browser package.
```apt install torbrowser-launcher -t buster-backports```

* In order to change the lightdm theme, edit the ```/etc/lightdm/lightdm-gtk-greeter.conf```
file. I usually set ```background=0``` for a black background.

* To enable jackd real time priorities you must create a file
```/etc/security/limits.d/audio.conf``` that will contain the lines
```
@audio   -  rtprio     95
@audio   -  memlock    unlimited
```
And run the command ```sudo dpkg-reconfigure -p high jackd```.
