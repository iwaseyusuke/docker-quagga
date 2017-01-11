#!/bin/bash

for name in $@
do
    if [ $name = "zebra" ]
    then
        echo "zebra daemon is already enabled -> skip"
    elif [ -s "/usr/lib/quagga/$name" ]
    then
        if [ ! -f "/etc/quagga/$name.conf" ]
        then
            echo "Creating empty config for $name daemon..."
            touch /etc/quagga/$name.conf
        fi
        echo "Enable to start $name daemon..."
        sed -i "s/$name=no/$name=yes/" /etc/quagga/daemons
    else
        echo "Unsupported daemon: $name"
    fi
done

service quagga restart > /dev/null 2>&1

bash

service quagga stop > /dev/null 2>&1
