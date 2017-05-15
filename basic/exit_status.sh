#!/bin/bash
! true
echo "last exit status is $?"

ls | balabala

echo $?

! ls | balabala #只更改返回值

echo $?