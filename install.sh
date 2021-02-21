#!/bin/bash

##Chrome WIP

#Firefox
FWDIR="~/.extensions-firefox"
MDIR="~/.mozilla/extensions"
#CDIR="

 if [ -d ${MDIR} ] then
	printf "Directory Exists" \n
	sleep 2
	printf "Creating Working Directory..."
	sleep 2
	mkdir ${FWDIR}
	cd ${FWDIR}
	wget https://addons.mozilla.org/firefox/downloads/file/3719726/privacy_badger-2021.2.2-an+fx.xpi
	unzip ${FWDIR}/*.xpi
	rm ${FWDIR}/*.xpi
	grep -oE '("{.*}")' mozilla-recommendation.json > id.txt
	sed 's/.//;s/.$//' id.txt > id-new.txt
	cd ${MDIR}
#	mkdir $(<id-new.txt cut -d/ -f1); mv ${FWDIR}/* $_ 
 
 fi
done
	
