#!/bin/bash
V 0.2


declare -a opt
opt=($@)
numopt=$#


function FUCK(){

echo
echo
echo -e "\t\t $i"

cat <<FUCKYOU

	_                         _
       |_|                       |_|
       | |         /^^^\         | |
      _| |_      (| "o" |)      _| |_
    _| | | | _    (_---_)    _ | | | |_
   | | | | |' |    _| |_    | \`| | | | |
   |          |   /     \   |          |
    \        /  / /(. .)\ \  \        /
      \    /  / /  | . |  \ \  \    /
	\  \/ /    ||Y||    \ \/  /
	 \__/      || ||      \__/
		   () ()
		   || ||
		  ooO Ooo
FUCKYOU

echo
echo
}


function HELP() {

cat <<EOF

Uso: fuck you [PROGRAMMA] or [OPZIONE]

EOF

}


function KILL(){
	
	j=1
	
	for i in ${opt[@]:1}; do
		if [[ $i != "" ]]; then
	#		echo "Sto uccidendo... $i"
			FUCK $i
		fi
		j=$((++j))
	done
}
	
	



if [[ $numopt == 0 ]]; then
	HELP
else
	if [[ $numopt -ge 1 && ${opt[0]} != "you" ]]; then
		HELP
	
	else
		KILL
	fi
fi


