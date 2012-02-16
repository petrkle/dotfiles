alias mf='mount /mnt/memory && crypt-mount'
alias uf='umount /mnt/memory ; crypt-umount'
alias lo="/opt/libreoffice3.4/program/soffice.bin"
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
alias httpheaders="lynx --dump --head"
alias kp='wine /home/petr/kindle-previewer/KindlePreviewer.exe'
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
export PATH=$PATH:~/bin:/usr/local/pgsql/bin
export MANPATH=$MANPATH:/usr/local/share/man
export LESSCHARSET=UTF-8
alias rdesktop="rdesktop -g 1024x768"
alias asciidoc='asciidoc -b xhtml11'
export PAGER=less
export LESS="-erX"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
