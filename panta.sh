#!/bin/bash
#-----> Created by Pentaghos <-----#
y="\x1b["
R=$y"38;5;7m"
D=$y"38;05;86m"
ERROR=$y"38;05;204m"
A=$y"38;05;193m"
P="PANTA"

d=0
while [ $d -le 100 ]
do
  echo " "
  let d=$d+1
done


if [ "$1" = "start" ]
	then
	clear
		cd src/
		./installpanta.sh
		echo -e "[$D $P.start $R] Started installation of PANTA! $R"

elif [ "$1" = "stop" ]
	then
	clear
		echo -e "[$D $P.stop $R] $ERROR Deinstall PANTA! $R"
		cd src/
		./deinstallpanta.sh

elif [ "$1" = "update" ]
	then
	clear
		echo -e "[$D $P.update $R] Update PANTA! $R"
		cd src/
		./updatepanta.sh

		
else
	echo -e "[$D $P $R] $A Bitte warte...$R"
	echo -e "$ERROR Use this Commands:
	 $D./pantainstaller.sh start
	 ./pantainstaller.sh update
	 ./pantainstaller.sh stop
	$R"

fi
