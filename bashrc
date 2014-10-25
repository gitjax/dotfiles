PLATFORM=$(uname)


case $PLATFORM in

	FreeBSD)

		if [ -x /usr/local/bin/vim ];then
			export EDITOR=/usr/local/bin/vim
			alias vi=/usr/local/bin/vim
			else
				export EDITOR=/usr/bin/vi
		fi

	;;

	Linux)

		# So far, this assumes RedHat/Centos 6.x

		# Source global definitions
		if [ -f /etc/bashrc ]; then
        	. /etc/bashrc
		fi

		if [ -x /usr/bin/vim ];then
			export EDITOR=/usr/bin/vim
			alias vi=/usr/bin/vim
			else
				export EDITOR=/bin/vi

		fi


	;;

esac


export PROMPT_COMMAND=__prompt_command  # Func to gen PS1 after CMDs

function __prompt_command() {
    local EXIT="$?"             # This needs to be first
	local txtred='\e[0;31m' # Red
	local txtgrn='\e[0;32m' # Green
	local txtwht='\e[0;37m' # White
	local txtrst='\e[0m'    # Text Reset
	PS1="${txtgrn}\u@\h:\w "

    if [ $EXIT != 0 ]; then
        PS1+="${txtred}[$EXIT]${txtgrn}\$ ${txtrst}"      # Add red if exit code non 0
     else
        PS1+="[$EXIT]\$ ${txtrst}"

    fi

}

# txtblk='\e[0;30m' # Black - Regular
# txtred='\e[0;31m' # Red
# txtgrn='\e[0;32m' # Green
# txtylw='\e[0;33m' # Yellow
# txtblu='\e[0;34m' # Blue
# txtpur='\e[0;35m' # Purple
# txtcyn='\e[0;36m' # Cyan
# txtwht='\e[0;37m' # White
# bldblk='\e[1;30m' # Black - Bold
# bldred='\e[1;31m' # Red
# bldgrn='\e[1;32m' # Green
# bldylw='\e[1;33m' # Yellow
# bldblu='\e[1;34m' # Blue
# bldpur='\e[1;35m' # Purple
# bldcyn='\e[1;36m' # Cyan
# bldwht='\e[1;37m' # White
# unkblk='\e[4;30m' # Black - Underline
# undred='\e[4;31m' # Red
# undgrn='\e[4;32m' # Green
# undylw='\e[4;33m' # Yellow
# undblu='\e[4;34m' # Blue
# undpur='\e[4;35m' # Purple
# undcyn='\e[4;36m' # Cyan
# undwht='\e[4;37m' # White
# bakblk='\e[40m'   # Black - Background
# bakred='\e[41m'   # Red
# bakgrn='\e[42m'   # Green
# bakylw='\e[43m'   # Yellow
# bakblu='\e[44m'   # Blue
# bakpur='\e[45m'   # Purple
# bakcyn='\e[46m'   # Cyan
# bakwht='\e[47m'   # White
# txtrst='\e[0m'    # Text Reset
