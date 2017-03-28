#!/bin/bash

#如果字符串并没有被初始化，那么它里面的值未定义，这种状态被称为“null”

if [ -n $string1 ]  # 错误的结果，显示$string1为非null, 虽然这个变量并没有被初始化
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

if [ -n "$string1" ] # 正确的结果，次$string1被引号扩起来就正确了
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

if [ $string1 ] # 这种情况运行的非常好. [ ] 测试操作符能够独立检查string是否为null.然而, 使用("$string1")是一种非常好的习惯

then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

string1=initialized
if [ $string1 ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

string1="a = b"
if [ $string1 ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

exit 0

