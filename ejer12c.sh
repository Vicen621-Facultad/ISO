#!/bin/bash

num1=$1
num2=$2
SIGNO=$3

case $SIGNO in
	+) echo "$num1 + $num2 = $((num1+num2))" ;;
	-) echo "$num1 - $num2 = $((num1-num2))" ;;
	%) echo "$num1 % $num2 = $((num1%num2))" ;;
	*) echo "$num1 * $num2 = $((num1*num2))" ;;
esac
