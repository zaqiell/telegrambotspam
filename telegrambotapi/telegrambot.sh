
#!/bin/bash
export LANG=C.UTF-8

#tirnaklari silip giriniz#
token=""
#****************************#

echo 1\. fotograf gondermek istiyorum
echo 2\. text && read allah

if [ $allah = 1 ]
then
	echo grup idsi gir: && read a
	echo gonderilecek resim: && read f
	echo kac tane gonderilsin: && read c
	d=1
	for (( d ; d<=c  ; d++ ))
	do
		curl -X POST -H "Content-Type:multipart/form-data" -F chat_id="$a" -F photo=@$f "https://api.telegram.org/bot$token/sendPhoto"
	done
fi

if [ $allah = 2 ]
then
	echo Grup id\'si giriniz: && read a
	echo Gondereceginiz mesaji giriniz: && read b
	echo Kac tane gondereceginizi giriniz: && read c

	i=0
	for (( i ; i<c ; i++ ))
	do
        	curl --data chat_id="$a" --data-urlencode "text=$b" "https://api.telegram.org/bot$token/sendMessage?parse_mode=HTML"
	done
fi
