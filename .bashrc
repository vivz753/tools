#variables
CORES="`nproc --all`"
UUID="`uuidgen | tr  '[:lower:]-' '[:upper:]_'`"

#cause i'm a derp
alias cp="cp -i"
alias mv="mv -i"

#for reference on how to use backticks for dynamic commands
alias test3='make -j`nproc --all` install'

#file access
alias bashrc="vim ~/.bashrc"
alias i3config="sudo vim /etc/regolith/i3/config"

#dev shortcuts
alias getid="uuidgen | tr  '[:lower:]-' '[:upper:]_'"

#git shortcuts
alias gl='git lg'
alias gr='git rebase'
alias gs='git status'
alias gd='git diff'
alias grh='git reset HEAD~'
alias gc='git checkout'
alias gb='git branch'
alias gcm='git commit -m'
alias gp='git push'
alias ga.='git add .'
alias ga='git add'
alias gpum='git pull upstream master'
alias grhh='git reset HEAD --hard'
alias grhs='git reset HEAD --soft'


