#!/bin/bash
sshpass -p Kr1sT!5h@Rp3xPl0r3! ssh -NL 5556:localhost:5554 -L 5557:localhost:5555 kristi@10.10.10.247 -p 2222 &

# wait for ssh to connect
sleep 5
killall adb
adb devices
adb shell
