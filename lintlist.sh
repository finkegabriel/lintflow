#!/bin/sh
. env.sh #might have to tweak this for your box

function main{
	case $1 in
	"-i")
		echo "linting"
		cd $PROJECT 
		npm run lint > $ISSUEFILE	
		;;
	"-u")
		echo "updating lint file"
		rm -rf $ISSUEFILE
		cd $PROJECT
		npm run lint > $ISSUEFILE
		cat $ISSUEFILE | less
		;;
	*)
		echo -e "error $1"
		;;

esac	
}

main $1
