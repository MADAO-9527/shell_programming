#!/bin/bash

func1()
{
    echo "This is a function."
}

declare -f  # 列出前面定义的所有函数

echo

declare -i var1  # var1是个整型变量
var1=2367
echo "var1 declared as $var1"
var1=var1+10    # 整型变量的声明并不需要使用'let'命令
echo "var1 incremented by 10 is $var1"
# 尝试修改一个已经声明为整型变量的值.
echo "Attempting to change var1 to floating point value, 2367.1"
var=2367.1   # 产生错误信息, 并且变量并没有被修改.
echo "var1 is still $var1"

echo

declare -r var2=13.36

echo "var2 declared as $var2"
var2=13.37
echo "var2 is still $var2"

exit 0