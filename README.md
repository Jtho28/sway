# Sway-WM Setup and Theme

**forked from Sway EndeavourOS Community Edition sway config repo**

[![Maintenance](https://img.shields.io/maintenance/yes/2023.svg)]()

## To Install Manually

    git clone https://github.com/Jtho28/sway.git

    cd sway

    bash sway-install.sh
   
## Contained In The Script
    cp -R .config/* ~/.config/
    
    cp .profile ~/.profile
    
    cp .gtkrc-2.0 ~/.gtkrc-2.0
    
    chmod -R +x ~/.config/sway/scripts
    
    chmod -R +x ~/.config/waybar/scripts
    
    sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
    
    dbus-launch dconf load / < xed.dconf
    
SDDM is the default display manager
    
    systemctl enable sddm.service
    
    systemctl start sddm.service
    
## Post install

- Keyboard layout in: `~/.config/sway/config.d/input`
- Screen settings in: `~/.config/sway/config.d/output`
- Keybindings Cheatsheet: press keyboard icon in waybar

- If your experiencing issues with your cursor - edit file `~/.profile` and comment out `export WLR_NO_HARDWARE_CURSORS=1`

## Copy script
Use the included `copy-to-repo.sh` script to copy local waybar, wofi, and sway config files to repo.</br>
    
    chmod +x copy-to-repo.sh
    
    ./copy-to-repo.sh

## Tutorial for sway-wm settings:

 - Background handled by swaybg
 - Gtk3 theme handled by lxappearance
 - Filebrowser = Thunar
 - Default Terminal-Emulator = XFCE4-Terminal and/or Termite
 - Text-Editor = xed/nano
 - Bar = Waybar
 - Sound = Pulseaudio

Main shortcuts: `~/.config/sway/cheatsheet`

## Notes About My Configuration
   You will likely need to reconfigure your sway output for your own monitor setup. Also, by waybar config only includes the DP-1 output, so if you do not see the waybar on the default config, you need to go into the waybar config and change the included output. You can also just delete the included output line in the config file e.g. "output": "DP-1" to make the waybar appear on all of your monitors.
    
   My output is also just broken in general, the 'main' workspace is mapped to my secondary monitory and the 'secondary' workspace is mapped to my main monitor. I do not know how to change this at this time so keep this in mind. Feel free to make a pull request if you think you can make a big improvement to the setup.
