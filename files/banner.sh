#!/bin/bash
#http://www.network-science.de/ascii/
#cyberlarge
if [[ $1 == site ]];then
	echo
	echo
	echo
	printf "

	SİTE \e[31m>\e[32m http://www.network-science.de/ascii\e[0m

	YAZI FONTU \e[31m>\e[32m CYBERLARGE\e[0m

	ADJUSTMENT \e[31m>\e[32m LEFT \e[31m=\e[32m CENTER\e[0m
	"
	echo
	echo
	echo
	exit
fi

#################### GÜNLER ####################

pazartesi=$(date |grep -o Mon)
sali=$(date |grep -o Tue)
carsamba=$(date |grep -o Wed)
persembe=$(date |grep -o Thu)
cuma=$(date |grep -o Fri)
cumartesi=$(date |grep -o Sat)
pazar=$(date |grep -o Sun)

#################### GÜNLERE GÖRE RENKLER ####################

if [[ $pazartesi == Mon ]];then
	renk1='\e[0m'
	renk2='\e[32m'
elif [[ $sali == Tue ]];then
	renk1='\e[0m'
	renk2='\e[31m'
elif [[ $carsamba == Wed ]];then
	renk1='\e[0m'
	renk2='\e[33m'
elif [[ $persembe == Thu ]];then
	renk1='\e[0m'
	renk2='\e[34m'
elif [[ $cuma == Fri ]];then
	renk1='\e[0m'
	renk2='\e[36m'
elif [[ $cumartesi == Sat ]];then
	renk1='\e[31m'
	renk2='\e[34m'
elif [[ $oazar == Sun ]];then
	renk1='\e[33m'
	renk2='\e[34m'
fi

#################### BANNER ####################

printf "
$renk1
 _______ ______  ______ 
 |_____| |     \ |_____]
 |     | |_____/ |_____]
$renk2
                 _______  ______ _______ __   __ _     _ ______
                 |_____| |_____/ |_____|   \_/   |     |  ____/
                 |     | |    \_ |     |    |    |_____| /_____
                                                               


   \e[31m////////// \e[32mTERMUX EĞİTİM \e[31m//////////\e[32m
   
   Coded By  \e[31m>\e[0m UMUT_KARA\e[32m
   İNSTAGRAM \e[31m>\e[0m termuxegitim\e[32m
   GİTHUB    \e[31m>\e[0m termux-egitim

\e[0m
"
