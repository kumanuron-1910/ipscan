#!/bin/bash

TEXTFILE="ipscan_result.txt"

# テキストファイルの初期化
if [ -e $TEXTFILE ]
then
	cp /dev/null $TEXTFILE
fi

echo "Scanning for IP address..."

# ネットワーク内すべてのIPアドレスの疎通確認
count=0
for x in {1..254}
do
	if ping -c 4 192.168.1.$x | grep -i "ttl" >& /dev/null
	then
		echo "[*] Connected : 192.168.1.$x"
		echo 192.168.1.$x >> $TEXTFILE
		count=`expr $count + 1`
	fi
done

echo "Scanning is completed!!"
echo "The text file has been created."
printf "\n"
echo "------------ Result ------------"
echo "Total IP address connected : $count"
echo "Created text file : $TEXTFILE"
printf "\n"

