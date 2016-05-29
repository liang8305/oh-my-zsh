if [[ $('uname') =~ "Darwin" ]];then

	cd () {
		if   [[ "x$*" == "x..." ]]; then
			cd ../..
		elif [[ "x$*" == "x...." ]]; then
			cd ../../..
		elif [[ "x$*" == "x....." ]]; then
			cd ../../../..
		elif [[ "x$*" == "x......" ]]; then
			cd ../../../../..
		elif [[ "$1" =~ "^[d-h]{1}$" ]] ;then
			cd /Volumes/${1}
		else
			builtin cd "$@"
		fi
	}

	alias vi='mvim -v'
	
fi
