# Make a symlink from [GIT] ~/dev/vivz753/bashrc/.bashrc to [LOCAL] ~/.bashrc
# EXAMPLE: `ln -s ~/dev/vivz753/bashrc/.bashrc ~/.bashrc`

#variables
CORES="`nproc --all`"
UUID="`uuidgen | tr  '[:lower:]-' '[:upper:]_'`"

#cause i'm a derp
set -o noclobber
alias cp="cp -i"
alias mv="mv -i"
alias link="ln -s"

#for reference on how to use backticks for dynamic commands
alias test3='make -j`nproc --all` install'

#directories
alias dev="cd ~/dev"
alias auris="cd ~/dev/auris"
alias vivz753="cd ~/dev/vivz753"

#file access
alias bashrc="vim ~/.bashrc"
alias i3config="sudo vim /etc/regolith/i3/config"
alias sshconfig="vi ~/.ssh/config"

#dev shortcuts
alias getid="uuidgen | tr  '[:lower:]-' '[:upper:]_'"

#git shortcuts
alias gc='git clean'
alias gl='git lg'
alias gr='git rebase'
alias gs='git status'
alias gds='git diff --staged'
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

#AURIS ONLY
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote-01'

