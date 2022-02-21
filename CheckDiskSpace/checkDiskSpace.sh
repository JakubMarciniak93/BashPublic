#!/bin/sh

Used=$(df -kv | grep '/x/...$' | tr -s ' ' | cut -d\  -f5 | sed 's/%//g')
TIMESTAMP=`date +"%Y-%m-%d %H:%M:%S"`
FILE=..../disk_space_alert.log

SERVER_IP=$(hostname -I | cut -d" " -f 1 | head -n 1 )
SERVER_NAME="Server Name"

FREE_SPACE=$((100-Used))
WARNING_SPACE=80
SENDIND_EMAIL_EVERY_HOUERS=12

RECIPIENTS="
user.name@mail.com
"

if [[ "$Used" -ge $WARNING_SPACE ]] && ( [ ! -f $FILE ] || [ $(( (`date +%s` - `stat -L --format %Y $FILE`) )) -ge $(( SENDIND_EMAIL_EVERY_HOUERS*60*60 -1 )) ] ) ; then
touch $FILE
echo "UWAGA mało miejsca na $SERVER_NAME Czas: $TIMESTAMP

Pozostało $FREE_SPACE% wolnego miejsca

Kiedy pozostanie mniej niż 15% mogą nastąpić problemy ze skryptami" > $FILE

	cat $FILE | mailx -v -s "UWAGA mało miejsca  $SERVER_NAME  IP: $SERVER_IP" $RECIPIENTS
fi

if [[ "$Used" -lt $WARNING_SPACE ]] && [[ -f $FILE ]] ; then
	rm $FILE
fi


