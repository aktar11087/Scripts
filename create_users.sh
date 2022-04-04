#!/bin/bash
cat /etc/group |grep engineering >/dev/null

if test $? -eq 1
then
/usr/sbin/groupadd engineering

fi





while read line;

do

echo $line | grep "First Name"

if test $? -eq 1

then

ACC=`echo $line | cut -d',' -f 3`

if test -n "$ACC"

then

REAL_NAME="$(echo $line | cut -f 2 -d',') $(echo $line | cut -f 1 -d',')"

mkdir /home/${ACC}

/usr/sbin/useradd -d /home/${ACC} -c "${REAL_NAME}" -g engineering "${ACC}"

PASSWORD=$RANDOM

echo -e "${PASSWORD}\n${PASSWORD}" | passwd ${ACC}

fi

fi

done < ${FILE}



exit 0

