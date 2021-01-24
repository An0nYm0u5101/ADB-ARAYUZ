#!/bin/bash

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
elif [[ $pazar == Sun ]];then
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
                                               

                         \e[33mSON GÜNCELLEME :\e[0m $(cd .. && sed -n 3p README.md |tr -d "Güncelleme ")\e[32m
  \e[1;97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ >>
  \e[33m|C|O|D|E|D| |B|Y| |U|M|U|T| |K|A|R|A|
  \e[97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ >>\e[0m
                                                  

  \e[97m██████████ \e[33m[\e[32m GİTHUB \e[33m>>\e[32m https://github.com/termuxxtoolss \e[33m]

  \e[97m███████████████ \e[33m[\e[32m TELEGRAM \e[33m>>\e[32m https://t.me/termuxxtoolss \e[33m]

  \e[97m████████████████████ \e[33m[\e[32m İNSTAGRAM \e[33m>>\e[32m https://www.instagram.com/termuxxtoolss \e[33m]

  \e[97m█████████████████████████ \e[33m[\e[32m YOUTUBE \e[33m>>\e[32m https://youtube.com/channel/UCE3QvczZXklHSAaRFwDLP5g \e[33m]\e[0m



"

