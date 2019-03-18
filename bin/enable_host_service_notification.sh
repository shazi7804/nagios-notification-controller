#!/bin/sh
# This is a sample shell script showing how you can submit the ENABLE_SVC_NOTIFICATIONS command
# to Nagios. Adjust variables to fit your environment as necessary.

if [ -z $1 ] || [ -z $2 ]; then
  echo "Usage: $0 <host>"
  echo "Description: disable special notifications for the host."
fi

HOST=$1
SERVICE=$2
NOW=`date +%s`
CMD='/opt/nagios/var/rw/nagios.cmd'

printf "[%lu] ENABLE_SVC_NOTIFICATIONS;%s;%s\n" $NOW $HOST $SERVICE > $CMD
echo "Enable $HOST service $SERVICE notification ..."
exit 0