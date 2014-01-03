#!/bin/bash

IP=$1
PORT=$2
PASSWD=$3

USER_HOME=$(eval echo ~`whoami`)

expect <<END
   set timeout -1

    spawn scp -P $PORT $USER_HOME/.ssh/id_rsa.pub root@$IP:~/authorized_keys
    expect "*?assword:"
    send "$PASSWD\r"
    expect 100%
    sleep 1
    send "exit\r"

    spawn ssh -o StrictHostKeyChecking=no root@$IP -p $PORT

    expect "*?assword:"
    send "$PASSWD\r"
    expect "#"
    send "mkdir ~/.ssh\r"
    send "mv ~/authorized_keys ~/.ssh/authorized_keys\r"
    expect "#"
    send "exit\r"
    expect eof

END

echo "END OF TRANSFER FILE"
