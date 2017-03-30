#!/bin/bash

# 每次调用$RANDOM都会返回不同的随机整数
MAXCOUNT=10
count=1
echo
echo "$MAXCOUNT random numbers:"
echo "---------------"
while [ "$count" -le $MAXCOUNT ]
do
    number=$RANDOM
    echo $number
    let "count += 1"
done
echo "---------------"

# 如果你需要在特定范围内产生随机整数, 那么使用'modulo'(模)操作，取模操作会返回除法的余数
RANGE=500
echo
number=$RANDOM
let "number %= $RANGE"
echo "Random number less than $RANGE --- $number"
echo

# 如果需要产生一个大于某个下限的随机整数，那么建立一个test循环来丢弃所有小于此下限值的整数
FLOOR=200
number=0
while [ "$number" -le $FLOOR ]
do
    number=$RANDOM
done
echo "Random number greater than $FLOOR --- $number"
echo

# 抛骰子
SPOTS=6
die1=0
die2=0
let "die1 = $RANDOM % $SPOTS + 1"
let "die2 = $RANDOM % $SPOTS + 1"
let "throw = $die1 + $die2"
echo "Throw of the dice = $throw"
echo

exit 0