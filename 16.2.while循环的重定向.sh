#!/bin/bash
if [[ -z "$1" ]]; then
    Filename=names.data      # 如果没有指定文件名，则使用这个默认值
else
    Filename=$1
fi

count=0
echo

while [ "$name" != Smith ]
do
    read name   # 从$Filename文件中读取输入，而不是stdin中读取输入
    echo $name
    let "count += 1"
done <"$Filename"    # 重定向stdin到文件$Filename

echo; echo "$count names read"; echo

exit 0