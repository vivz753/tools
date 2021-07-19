# For MacOS ONLY
# By Vivian Leung
# Created August 2020

# Make a symlink from [GIT] ~/dev/vivz753/tools/MacOS/bash_profile/.bashprofile to [LOCAL] ~/.bash_profile
# EXAMPLE: `ln -s ~/dev/vivz753/tools/MacOS/bash_profile/.bash_profile ~/.bash_profile`

# Generate a ssh key in ~/.ssh
function sshgen {
	if (($# != 2))
then
	echo "When creating an ssh key, please include a keyword (i like to use my email) to append to the end of the ssh key as the 1st argument, then provide the file name (i.e. vivz753_git_rsa) you wish to create as the 2nd argument"
fi

if (($# == 2))
then
	ssh-keygen -t rsa -C "$1" -f ~/.ssh/"$2" -N ""

	echo "\n Follow the instructions below to integrate with Git: \n"
	echo "1. Copy paste the SSH key, print the public key with this command"
	echo "   cat ~/.ssh/"$2".pub"
	echo "\n2. Run this command to add the SSH key to SSH agent"
	echo "   ssh-add -K ~/.ssh/"$2""
	echo "\n3. Add this to ~/.ssh/config \n"
	echo "Host *"
	echo "  AddKeysToAgent yes"
	echo "  Identity File ~/.ssh/"$2""
	echo
	
fi
}

# Find file/folder
function ff {
	if (($# !=2))
then 
	echo "Please provide the destination you wish to search in as the 1st argument ("." for current directory, "/" for the entire drive, " /" for the current user directory only), along with the name of the file/directory you wish to search for" 

	echo "ff command will find all files/directories that match or contain the searched name)"
fi

if (($# == 2))
then
	find "$1" -name "*$2*" | grep "$2" 
fi 
}

# Find file with text
function ffwt {
	if (($#!=2))
then
	echo "Please provide the destination you wish to search in as the 1st argument ("." for the current directory, "/" for the entire drive, " /" for the current user directory only), along with the text expression you wish to search for."

	echo "ffwt command will find all files containing the text expression"
fi

if (($# == 2))
then
	echo "File(s) containing expression \"$2\""
	grep -lr "$2" "$1" -s
fi
}

#variables
UUID="`uuidgen | tr  '[:lower:]-' '[:upper:]_'`"

#cause i'm a derp
set -o noclobber
alias cp="cp -i"
alias mv="mv -i"
alias link="ln -s"
alias ll="ls -alF"
alias la="ls -A"
alias l="'ls -CF"
alias grep='grep --color=auto --exclude-dir=\.svn'

#for reference on how to use backticks for dynamic commands

#directories
alias .ssh="cd ~/.ssh"
alias dev="cd ~/dev"
alias vivz753="cd ~/dev/vivz753"
alias tools="cd ~/dev/vivz753/tools"
alias cghw="cd ~/dev/vivz753/ComputerGraphics/CSE167X"
alias vus="cd ~/dev/vivz753/vleung.us"
alias vxyz="cd ~/dev/vivz753/vleung.xyz"
alias av="cd ~/dev/av"
alias avb="cd ~/dev/av/nodejs-server"
alias avf="cd ~/dev/av/gatsby-client"
alias pom="cd ~/dev/pom"
alias inf="cd ~/dev/infor"
alias ewc="cd ~/dev/infor/enterprise-wc"

#file access
alias bashp="vim ~/.bash_profile"
alias sshconfig="vi ~/.ssh/config"

#dev shortcuts
alias getid="uuidgen | tr  '[:lower:]-' '[:upper:]_'"

#git shortcuts
alias gcdm='git checkout develop-monarch'
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
alias grv='git remote -v'
alias grsurl='git remote set-url'

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote-01'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
