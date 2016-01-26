#!/bin/bash

if [ "$UID" -eq 0 ];then
    echo "root!"

    echo "＋------------------------------------------------------------------------------------------------------------＋";
    echo "■setup start " ${0};
    echo "＋------------------------------------------------------------------------------------------------------------＋";

    wget http://dl.fedoraproject.org/pub/epel/6/x86_64/protobuf-2.3.0-9.el6.x86_64.rpm
    wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/zinnia-0.06-3vl6.x86_64.rpm
    wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/tegaki-zinnia-japanese-0.3-1vl6.noarch.rpm
    wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/mozc-server-1.5.1090.102-1vl6.x86_64.rpm
    wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/mozc-utils-gui-1.5.1090.102-1vl6.x86_64.rpm
    wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/ibus-mozc-1.5.1090.102-1vl6.x86_64.rpm
    wget http://ftp.kddilabs.jp/pub/Linux/packages/Vine/Vine-6.3/x86_64/Vine/RPMS/mozc-1.5.1090.102-1vl6.x86_64.rpm
    mkdir -p rpm
    mv *.rpm rpm/

    rpm -Uvh rpm/protobuf-2.3.0-9.el6.x86_64.rpm rpm/zinnia-0.06-3vl6.x86_64.rpm rpm/tegaki-zinnia-japanese-0.3-1vl6.noarch.rpm rpm/mozc-server-1.5.1090.102-1vl6.x86_64.rpm rpm/mozc-utils-gui-1.5.1090.102-1vl6.x86_64.rpm rpm/ibus-mozc-1.5.1090.102-1vl6.x86_64.rpm rpm/mozc-1.5.1090.102-1vl6.x86_64.rpm

#    rm -f rpm/*.*

    echo "＋------------------------------------------------------------------------------------------------------------＋";
    echo "■setup end";
    echo "＋------------------------------------------------------------------------------------------------------------＋";

else
    echo "non-root user!"
fi


