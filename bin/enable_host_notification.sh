#!/bin/sh
# This is a sample shell script showing how you can submit the ENABLE_HOST_NOTIFICATIONS command
# to Nagios. Adjust variables to fit your environment as necessary.

if [ -z $1 ]; then
  echo "Usage: $0 <host>"
  echo "Description: enable host notifications."
fi

HOST=$1
NOW=`date +%s`
CMD='/opt/nagios/var/rw/nagios.cmd'

printf "[%lu] ENABLE_HOST_NOTIFICATIONS;$HOST\n" $NOW > $CMD
echo "Enable $HOST notification ..."
exit 0