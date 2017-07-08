#!/bin/bash
EPEL_URL_ROOT="http://dl.fedoraproject.org/pub/epel/6/x86_64/"
VINE_URL_ROOT="http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.5/x86_64/Vine/RPMS/"
mkdir -p rpm

if [ "$UID" -eq 0 ];then
    echo "root!"

    echo "＋------------------------------------------------------------------------------------------------------------＋";
    echo "■setup start " ${0};
    echo "＋------------------------------------------------------------------------------------------------------------＋";

    for RPM in `wget -q -O - ${EPEL_URL_ROOT} | cut -d '"' -f 6 | grep "^protobuf-" | grep "x86_64.rpm$" | sort | head -1`
    do
	wget ${EPEL_URL_ROOT}${RPM} 
    done

    for RPM in `wget -q -O - ${VINE_URL_ROOT} | cut -d '"' -f 6 | grep ".rpm$" | egrep "zinnia|mozc"`
    do
	    wget ${VINE_URL_ROOT}${RPM} 
    done

    mv *.rpm rpm/

    rpm -Uvh $( find rpm/ -name *.rpm )

    rm -f rpm/*.*

    echo "＋------------------------------------------------------------------------------------------------------------＋";
    echo "■setup end";
    echo "＋------------------------------------------------------------------------------------------------------------＋";

else
    echo "non-root user!"
fi


