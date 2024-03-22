#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\@  \d]\$ '
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
                                                        
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# alias xset='bash ~/scripts/xset.sh'
alias m=mplayer
alias bashrc='sudo vi /etc/bash.bashrc'
alias sb='source /etc/bash.bashrc'
alias reboot='sudo shutdown -r now'
alias menu='sudo vi /boot/grub/grub.cfg'
alias vi='vim'
# alias pacman='su -c pacman'
alias keys='su -c "bash /home/jbm/scripts/keys.sh"'
alias lo=libreoffice 
alias off='sudo shutdown -h now'
alias wlan1='su -c "bash /home/jbm/scripts/wlan1.sh"'
alias sd='cd ~/.sabnzbd.ini/Downloads/complete/'
alias l=ls
alias sl=ls
# alias sdb1='bash ~/scripts/sdb1.sh'
alias unmedia='bash ~/scripts/unsdb1.sh'
alias gracemount='bash ~/scripts/sdb.sh'
alias umount='sudo umount'
alias b=acpi
alias classes='bash ~/scripts/classes.backup.sh'
alias convert='bash ~/scripts/video.to.audio.extraction.sh'
alias ping='ping -c 3 unix.com'
alias du='du -h'
alias pidgin='pidgin & exit'
alias sgrab='mv ~/.sab*/Down*/com*/*/*pdf* ~/catalog/'
alias c=clear
alias py=python
alias pytest='python3 -m doctest -v'
alias pyi='python3 -i'
alias ldev='ls /dev/ | grep sd'
alias lynx='lynx -vikeys'
alias xinit='su -c "vi /etc/X11/xinit/xinitrc"'
alias airbears="su -c 'bash /home/jbm/scripts/airbears.sh'"
alias laney='su -c "bash /home/jbm/scripts/laney.sh"'
alias bcc='su -c "bash /home/jbm/scripts/bcc.sh"'
alias android="su -c 'bash /home/jbm/scripts/android.sh'"
alias x0='xbacklight -dec 100'
alias phys='epdfview /home/jbm/classes/physics/physics*every*pdf*'
alias home=wlan1
alias au="su -c 'bash /home/jbm/scripts/au_coquelet.sh'"
alias keys='vi /home/jbm/.fluxbox/keys'
alias pi='sudo pacman -S'
alias p='pacman -Ss'
alias pu='sudo pacman -U'
alias scan='bash /home/jbm/scripts/scan.sh'
alias rf='bash ~/rf*sh'
alias am=alsamixer
alias diary='vi ~/docs/diary.txt'
alias wlan_off='sudo iwconfig wlan0 txpower off'
alias ntp='sudo ntpdate pool.ntp.org'
alias cs='ssh -X cs61a-bs@star.cs.berkeley.edu'
alias 9h='ssh -X cs9h-cl@star.cs.berkeley.edu'
alias sftp='sftp cs61a-bs@star.cs.berkeley.edu'
alias food_expenditure='py /home/jbm/programming/python/math/food_expenditure.py'

cdpy() {
	cd /home/jbm/programming/python/
	clear
	ls --color=auto
}

media() {
	sudo mount /dev/sdb1 /media;
	cd /media/
	ls
}

readpy() {
	xpdf /home/jbm/catalog/python/Program* & exit
}

writer() {
	vim ~/docs/FofA.txt
	}
foa() {
	cd ~/docs/
	vim foa.txt
	}

tor() {
	rm -r /home/jbm/packages/tor-broswer_en-US
	tar xzvf /home/jbm/packages/tor-browser-gnu-linux-i686-2.2.37-2-dev-en-US.tar.gz
	sudo ip link set wlan0 down
	sleep 1
	macchanger -r wlan0
	sleep 1
	sudo ip link set wlan0 up
	sleep 1
	bash /home/jbm/packages/tor-broswer_en-US/start-tor-browser
	}

project_1() {
	cd /media/classes/cs61a/project_1/hog
	vim hog.py
}
proj2() {
	cd ~/classes/cs61a/proj_2/
	vim trends.py
}
