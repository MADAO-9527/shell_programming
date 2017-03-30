#!/bin/bash
# 将一个目录下的所有MacPaint格式的图片文件都转换为“pbm”格式的图片文件。

OPERATION=macptopbm
SUFFIX=pbm  # 新的文件名后缀

if [ -n "$1"]
then
    directory=$1  # 如果目录名作为参数传递给脚本
else
    directory=$PWD
fi

for file in $directory/*
do
    filename=${file%.*c} # 去掉文件名的“.mac”后缀
    $OPERATION $file > "$filename.$SUFFIX" # 把结果重定向到新的文件中
    rm -f $file
    echo "$filename.$SUFFIX"
done

exit 0