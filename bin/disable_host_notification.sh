#!/bin/sh
# This is a sample shell script showing how you can submit the DISABLE_HOST_NOTIFICATIONS command
# to Nagios. Adjust variables to fit your environment as necessary.

if [ -z $1 ]; then
  echo "Usage: $0 <host>"
  echo "Description: disable host notifications."
fi

HOST=$1
NOW=`date +%s`
CMD='/opt/nagios/var/rw/nagios.cmd'

printf "[%lu] DISABLE_HOST_NOTIFICATIONS;$HOST\n" $NOW > $CMD
echo "Disable $HOST notification ..."
exit 0