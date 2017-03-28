#!/bin/bash
MINPARAMS=5

echo

echo "The name of this script is \"$0\"."
echo "The name of this script is \"`basename $0`\"."

echo

if [ -n "$1" ]
then
    echo "Parameter #1 is $1"
fi

if [ -n "$2" ]
then
    echo "Parameter #2 is $2"
fi

if [ -n "$3" ]
then
    echo "Parameter #3 is $3"
fi

if [ -n "$4" ]
then
    echo "Parameter #4 is $4"
fi

if [ -n "$5" ]
then
    echo "Parameter #5 is $5"
fi

echo "-----------------------------"
echo "All the command-line parameters are: \"$*\""

if [ $# -lt "$MINPARAMS" ]; then
    echo
    echo "This script needs at least $MINPARAMS command-line arguments!"
fi

echo

exit 0