alias mf='mount /mnt/memory && crypt-mount'
alias uf='umount /mnt/memory ; crypt-umount'
alias lo="/opt/libreoffice4.1/program/soffice.bin"
alias mkpasswd="mkpasswd -s 0 -l 6"
alias cal='cal -m3'
alias cls='clear'
alias sp="mplayer -vf scale=120:160 -ao null"
alias date='date "+%-d. %-m. %Y %k:%M:%S"'
alias df='df -Th' 
alias bc='bc -lq' 
alias ll='ls -lp'
alias vim='vim -u ~/.vim/vimrc' 
alias xfig="xfig -nosplash"
PROMPT_COMMAND='history -a'
shopt -s histappend
complete -A directory cd
complete -A command man
complete -A file -X '!*.ps' gv
export HOST=`echo $HOSTNAME | cut -d . -f 1`
export PS1='[\u@\h \W]\$ '
export HISTSIZE=10000
export HISTCONTROL=ignoredups
export EDITOR='vim -u ~/.vim/vimrc' 
export VISUAL=$EDITOR
export SVN_EDITOR=$EDITOR
export PATH=$PATH:~/bin:/usr/local/pgsql/bin:/usr/share/java/bin:~/android-sdk-linux/tools:~/android-sdk-linux/platform-tools:~/src/go/bin:/opt/chef/bin
export MANPATH=$MANPATH:/usr/local/share/man
export LESSCHARSET=UTF-8
alias rdesktop="rdesktop -g 1024x768"
alias asciidoc='asciidoc -b xhtml11'
export PAGER=less
export LESS="-erX"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
export JAVA_HOME=/usr/lib64/java
export ANDROID_HOME=~/android-sdk-linux
function mwin {
  sudo /bin/mount -t cifs -o iocharset=utf8,uid=petr,gid=users,rw,nobrl,credentials=$HOME/.windowsadmin //$1/$2\$ /mnt/tmp/
}
alias umount='sudo umount'
export GPGKEY=748DDDC5
export GOPATH="$HOME/src/go"
alias pyradio='pyradio -s $HOME/.pyradio.stations'
stty -ixon
