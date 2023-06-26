
#!/bin/bash
export LANG=C.UTF-8

#TIRNAKLARI SİLİP GİRİNİZ#
id = "botun idsini giriniz"
token = "tırnakları silip giriniz"
#****************************#



echo 1\. fotoğraf göndermek istiyorum
echo 2\. text && read allah

if [ $allah = 1 ]
then
	echo grup idsi gir: && read a
	echo gönderilecek resim: && read f
	echo kaç tane gönerilsin: && read c
	b=bot6100611354:AAEzorOr2l1y0p5Pt2GDFZ-cynEWWdjNIFw
	d=1
	for (( d ; d<=c  ; d++ ))
	do
		curl -X POST -H "Content-Type:multipart/form-data" -F chat_id="$a" -F photo=@/home/anon$f "https://api.telegram.org/$b/sendPhoto"
	done
fi

if [ $allah = 2 ]
then
	echo Grup id\'si giriniz: && read a
	echo Göndereceğiniz mesajı giriniz: && read b
	echo Kaç tane göndereceğinizi giriniz: && read c

	i=0
	for (( i ; i<c ; i++ ))
	do
        	curl --data chat_id="$a" --data-urlencode "text=$b" "https://api.telegram.org/bot$id:$token/sendMessage?parse_mode=HTML"
	done
fi
