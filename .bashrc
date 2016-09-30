export PS1="\[\e[37;40m\][\[\e[32;40m\]\A\[\e[37;40m\] @ \[\e[36;40m\]\w\[\e[0m\] ]\\$ "

if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

export TERM=xterm-256color
sl
cmatrix 
