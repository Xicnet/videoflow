#
# VideoFlow startup script v 0.3 . mié sep  8 12:42:48 ART 2004
#

PATCH="videoflow"
BINDIR=/usr/bin/pd # pd main binary
EXTDIR=/usr/lib/pd/extra # pd externals dir
PATCHDIR="/home/rama/pd/videoflow-1.2" # path to videoflow
LOGDIR=$PATCHDIR/logs # pd output logs dir

PATHS="-path $PATCHDIR -path $PATCHDIR/abstractions -path $EXTDIR"
LIBS="-lib pdp -lib pidip -lib playlist -lib OSC -lib maxlib -lib zexy -lib Gem -lib linuxjoystick"
EXTRAARGS="-noaudio -mididev 1"

echo "--------------------------" >> $LOGDIR/$PATCH
echo `date` >> $LOGDIR/$PATCH
echo "--------------------------" >> $LOGDIR/$PATCH

$BINDIR $PATHS $EXTRAARGS $LIBS $EXTRAARGS $PATCHDIR/main.pd 2>> $LOGDIR/$PATCH 1>/dev/null & tail -f $LOGDIR/$PATCH

