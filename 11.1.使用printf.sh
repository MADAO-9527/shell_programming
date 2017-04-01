#!/bin/bash
PI=3.14159265358979
DecimalConstant=31373
Message1="Greetings,"
Message2="Earthling."

echo

printf "Pi to 2 decimal places = %1.2f" $PI
echo
printf "Pi to 9 decimal places = %1.9f" $PI
printf "\n"

printf "Constant = \t%d\n" $DecimalConstant

printf "%s %s \n" $Message1 $Message2

echo

# ========================= #
# 模拟C函数，sprintf()，使用一个格式化的字符串来加载一个变量。

echo

Pi12=$(printf "%1.12f" $PI)
echo "Pi to 12 decimal places = $Pi12"

Msg=`printf "%s %s \n" $Message1 $Message2`
echo $Msg
echo $Msg

exit 0