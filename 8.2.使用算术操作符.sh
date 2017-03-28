#!/bin/bash
echo "使用10种不同的方法计数到11"

n=1; echo -n "$n "

let "n = $n + 1"
echo -n "$n "

: $(( n = $n + 1 ))
echo -n "$n "

(( n = n + 1))
echo -n "$n "

n=$(($n + 1))
echo -n "$n "

: $[ n = $n + 1]
echo -n "$n "

n=$[ $n + 1 ]
echo -n "$n "

let "n++"
echo -n "$n "

(( n++ ))
echo -n "$n "

: $(( n++ ))
echo -n "$n "

: $[ n++ ]
echo -n "$n "

echo

exit 0