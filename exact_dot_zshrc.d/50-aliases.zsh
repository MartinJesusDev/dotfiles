#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# ---------- Navegación / edición ----------
alias cd..='cd ..'
alias npacman="sudo nano /etc/pacman.conf"
alias ngrub="sudo nano /etc/default/grub"
alias nmkinitcpio="sudo nano /etc/mkinitcpio.conf"
alias nzshrc="nano ~/.zshrc"

# ---------- Paquetes ----------
alias update='sudo pacman -Syu'
alias upall='yay -Syu'
alias unlock='sudo rm /var/lib/pacman/db.lck'
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"
# alias cleanup='sudo pacman -Rns $(pacman -Qtdq) && sudo rm -rf /var/cache/pacman/pkg/* && rm -rf ~/.cache/*'

# ---------- Utilidades ----------
alias grep='grep --color=auto'
alias df='df -h' # display disk usage in human-readable format
alias free='free -mt' # display memory in human-readable format and include total
alias jctl='journalctl -p 3 -xb' # get the error messages from journalctl
alias wget='wget -c' # continue downloads if interrupted
alias ps="ps auxf" # show process tree
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e" # search for processes by name, excluding the grep process itself
alias hw="hwinfo --short"
alias fc='sudo fc-cache -fv' # add new fonts
alias kc="killall conky"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
#alias install-grub="sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB"
alias hardcode-tray-kde="sudo -E hardcode-tray --conversion-tool RSVGConvert --size 22 --theme Papirus" # fix app indicator hardcoded icons KDE
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*' # check vulnerabilities microcode
alias userlist="cut -d: -f1 /etc/passwd" # list all users on the system
alias reload="exec zsh" # reload the shell

# ---------- Obtener mejores mirrors ----------
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrores="sudo reflector -f 10 --sort rate --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
