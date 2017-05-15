#!/bin/sh

echo "The current time and date is `date`" >> logfile
echo "Logged-in users: `users`" >> logfile
echo `uptime` >> logfile
