#!/bin/bash
if [[ $1 == -h || $1 == --help || $1 == "" ]];then
	echo
	printf "\e[31m

	///////////// \e[97mHELP\e[31m /////////////\e[97m

	pidkapat -h & --help         \e[33mSCRİPT YARDIM MENÜSÜ\e[97m

	pidkapat -d                  \e[33mSCRİPT DÜZENLE\e[97m
	
	pidkapat --ngro              \e[32mNGROK BAĞLANTI KES\e[97m

	pidkapat --php               \e[32mPHP BAĞLANTI KES\e[97m

	pidkapat --tümü              \e[32mNGROK && PHP BAĞLANTI KES\e[97m

	pidkapat --tool              \e[32mTOOL BAĞLANTI KES\e[97m
	"
	echo
	echo
	echo
	exit
fi
if [[ $1 == -d ]];then
	vim $PREFIX/bin/pidkapat
fi
ngrokk () {
echo
echo
kontrol1=$(ps aux |grep "ngrok" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
if [[ $kontrol1 -gt 0 ]];then
	for no in `seq 1 $kontrol1`;do
		PID=$(ps aux |grep "ngrok" |grep -v grep |grep -v index |awk '{print $2}' |sed -n $no\p)
		kill -9 $PID
	done
	echo
	echo
	echo
	printf "\e[32m[✓] \e[33mNGROK\e[97m ARKAPLANDAN KAPATILDI"
	echo
	echo
	echo
	break
fi
}
if [[ $1 == --ngro ]];then
	while :
	do
	kontrol1=$(ps aux |grep "ngrok" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
	if [[ $kontrol1 -gt 0 ]];then
		ngrokk
	else
		echo
		echo
		echo
		printf "\e[32m[*] \e[33mNGROK\e[97m ARKAPLAN DA ÇALIŞMIYOR"
		echo
		echo
		echo
		break
	fi
	done
fi
phpp () {
echo
echo
kontrol1=$(ps aux |grep "127.0.0.1" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
if [[ $kontrol1 -gt 0 ]];then
	for no in `seq 1 $kontrol1`;do
		PID=$(ps aux |grep "127.0.0.1" |grep -v grep |grep -v index |awk '{print $2}' |sed -n $no\p)
		kill -9 $PID
	done
	echo
	echo
	echo
	printf "\e[32m[✓] \e[33mPHP\e[97m ARKAPLANDAN KAPATILDI"
	echo
	echo
	echo
	break
fi
}
if [[ $1 == --php ]];then
	while :
	do
	kontrol1=$(ps aux |grep "127.0.0.1" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
	if [[ $kontrol1 -gt 0 ]];then
		phpp
	else
		echo
		echo
		echo
		printf "\e[32m[*] \e[33mPHP\e[97m ARKAPLAN DA ÇALIŞMIYOR"
		echo
		echo
		echo
		break
	fi
	done
fi

tumu() {
tumu_kontrol () {
echo
echo
kontrol1=$(ps aux |grep "$k_ad" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
if [[ $kontrol1 -gt 0 ]];then
	for no in `seq 1 $kontrol1`;do
		PID=$(ps aux |grep "$k_ad" |grep -v grep |grep -v index |awk '{print $2}' |sed -n $no\p)
		kill -9 $PID
	done
	echo
	echo
	echo
	printf "\e[32m[✓] \e[33m$b_ad\e[97m ARKAPLANDAN KAPATILDI"
	echo
	echo
	echo
fi
}
k_ad="ngrok"
b_ad="NGROK"
while :
do
	kontrol1=$(ps aux |grep "$k_ad" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
	if [[ $kontrol1 -gt 0 ]];then
		tumu_kontrol
	else
		echo
		echo
		echo
		printf "\e[32m[*] \e[33m$b_ad\e[97m ARKAPLAN DA ÇALIŞMIYOR"
		echo
		echo
		echo
		break
	fi
done
k_ad="127.0.0.1"
b_ad="PHP"
while :
do
	kontrol1=$(ps aux |grep "$k_ad" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
	if [[ $kontrol1 -gt 0 ]];then
		tumu_kontrol
	else
		echo
		echo
		echo
		printf "\e[32m[*] \e[33m$b_ad\e[97m ARKAPLAN DA ÇALIŞMIYOR"
		echo
		echo
		echo
		break
	fi
done
}
if [[ $1 == --tümü || $1 == --tumu ]];then
	tumu
fi
tool() {
tool_kontrol () {
kontrol1=$(ps aux |grep "bash $k_ad.sh" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
if [[ $kontrol1 -gt 0 ]];then
	for no in `seq 1 $kontrol1`;do
		PID=$(ps aux |grep "bash $k_ad.sh" |grep -v grep |grep -v index |awk '{print $2}' |sed -n $no\p)
		kill -9 $PID
	done
fi
}

k_ad=$(sed -n 1p README.md)

while :
do
	kontrol1=$(ps aux |grep "bash $k_ad.sh" |grep -v grep |grep -v index |awk '{print $2}' |wc -l)
	if [[ $kontrol1 -gt 0 ]];then
		tool_kontrol
	else
		break
	fi
done
}
if [[ $1 == --tool ]];then
	if [[ -a README.md ]];then
		tool
	else
		echo
		echo
		echo
		printf "\e[31m[!]\e[97m README.md DOSYASI BULUNAMADI"
		echo
		echo
		echo
	fi
fi
