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

	echo
	echo "**************************************************************************"
	echo "*									 *"
	echo "*	(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ -- written by vivian leung  -- *:･ﾟ✧\(◕ヮ◕\) 	 *"
	echo "*		source code: https://github.com/vivz753		 	 *"
	echo "*									 *"
	echo "**************************************************************************"
	echo
	echo "Follow the instructions below to integrate with Git:"
	echo
	echo "1. Copy paste the SSH key, print the public key with this command"
	echo
	echo "   cat ~/.ssh/"$2".pub"
	echo
	echo "2. Run this command to add the SSH key to SSH agent"
	echo
	echo "   ssh-add -K ~/.ssh/"$2""
	echo
	echo "3. (This step might not be needed; I had to remove the config file for it to work, for some reason) Add this to ~/.ssh/config "
	echo
	echo "	Host *"
	echo "  	AddKeysToAgent yes"
	echo "  	Identity File ~/.ssh/"$2""
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
alias portfolio="cd ~/dev/vivz753/vivian-portfolio"
alias av="cd ~/dev/vivz753/av"
alias avb="cd ~/dev/vivz753/av/autoviseai-nodejs-api"
alias avf="cd ~/dev/vivz753/av/autoviseai"

#file access
alias bashp="vi ~/.bash_profile"
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
