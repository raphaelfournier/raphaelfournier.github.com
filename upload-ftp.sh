#!/bin/bash    
HOST="ftp.lautre.net"
USER="rfs"
PASS="Passer_8"
LCD="~/Blogging/fusion/_site/"
RCD="raphael"
#DELETE="--delete"
#lftp -c "set ftp:list-options -a;
lftp -c "
open ftp://$USER:$PASS@$HOST; 
lcd $LCD;
cd $RCD;
mirror --reverse --verbose
#--exclude-glob .git/"
#--exclude-glob a-file-to-exclude \
#--exclude-glob a-file-group-to-exclude* \
#--exclude-glob other-files-to-exclude"
