#Make a symlink from [GIT] ~/dev/vivz753/bashrc/.bashrc to [LOCAL] ~/.bashrc
# EXAMPLE: `ln -s ~/dev/vivz753/tools/bashrc/.bashrc ~/.bashrc`

function listpkg {
if (("$#" !=1))
  then
    echo "Please provide the argument(s): 1) the string relevant to the name of the apt-get package you are looking for"
  fi
if (("$#" ==1))
  then
  apt list --installed | grep $1
fi
}

function sshgen {
	if (("$#" != 2))
then
	echo "When creating an ssh key, please include a keyword (i like to use my email) to append to the end of the ssh key as the 1st argument, then provide the file name (i.e. vivz753_git_rsa) you wish to create as the 2nd argument"
fi

if (("$#" == 2))
then
	ssh-keygen -t rsa -C "$1" -f ~/.ssh/"$2" -N ""
fi
}

function findme {
	if (("$#" !=2))
then 
	echo "Please provide the destination you wish to search in as the 1st argument ("." for current directory, "/" for the entire computer, " /" for the current user directory only), along with the name of the file/directory you wish to search for (this command will find any file/directory name that matches or contains the searched name)"
fi

if (("$#" == 2))
then
	find "$1" -name "*$2*" 
fi 
}

function findmatches {
  if (("$#" !=2))
  then
    echo -e "Please provide 2 arguments: \n  1) the destination you wish to search in (i.e. "." for current directory, "/" for the entire computer, " /" for the current user directory only) \n  2) the string you wish to search for \nThis function will list all the files that contain the string match(es)"
  fi

  if (("$#" == 2))
  then
    find "$1" -exec grep -ls "$2" {} \;
  fi
}
#variables
CORES="`nproc --all`"
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
alias test3='make -j`nproc --all` install'

#directories
alias .ssh="cd ~/.ssh"
alias dev="cd ~/dev"
alias vivz753="cd ~/dev/vivz753"

#file access
alias basha="vim ~/.bash_aliases"
alias bashrc="vim ~/.bashrc"
alias i3config="sudo vim /etc/regolith/i3/config"
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

#AURIS ONLY
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote-01'

