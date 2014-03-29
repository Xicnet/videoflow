BASEPATH=`pwd`
/usr/bin/pd -path $BASEPATH -path $BASEPATH/abstractions -path /usr/lib/extra -path /home/rama/pd-extra -noaudio -mididev 1 -lib pdp -lib pidip -lib playlist -lib OSC -lib maxlib -lib zexy -lib linuxjoystick -noaudio -mididev 1 $BASEPATH/main.pd
