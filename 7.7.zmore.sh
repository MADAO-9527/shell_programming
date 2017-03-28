#!/bin/bash

#使用 'more' 来查看gzip文件

# 错误代码
NOARGS=65
NOTFOUND=66
NOTGZIP=67

if [ $# -eq 0 ]
then
    echo "Usage: `basename $0` filename" >&2 # 错误信息输出到stderr
    exit $NOARGS # 返回65作为脚本的退出状态码（错误码）
fi

filename=$1

if [ ! -f "$filename" ] # 将$filename引用起来, 这样允许其中包含空白字符.
then
    echo "File $filename not found!" >&2
    exit $NOTFOUND
fi

if [ ${filename##*.} != "gz" ]
then
    echo "File $1 is not a gzipped file!"
    exit $NOTGZIP
fi

zcat $1 | more

exit $?