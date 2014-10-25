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
	;;

esac


