#!/bin/bash
exec 6<&0   # 将文件描述符#6与stdin链接起来，保存stdin

exec < data-file   # stdin被文件"data-file"所代替

read a1  # 读取文件"data-file"的第一行
read a2

echo
echo "Following lines read from file."
echo "-------------------------------"
echo $a1
echo $a2

echo;echo;echo

exec 0<&6 6<&-

echo -n "Enter data "
read b1  # 现在从stdin中读取
echo "Input read from stdin."
echo "-------------------------------"
echo "b1 = $b1"
echo

exit 0