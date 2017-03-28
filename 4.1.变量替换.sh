#!/bin/bash
a=375
hello=$a

echo hello #没有输出
echo $hello #引用变量要加$号

hello="A B    C           D"
echo $hello #多个空格只保留一个
echo '$hello'

echo

echo '$hello'

#可以在同一行设置多个变量，但是必须要以空格进行分隔
var1=21 var2=22
echo
echo "var1=$var1 var2=$var2"