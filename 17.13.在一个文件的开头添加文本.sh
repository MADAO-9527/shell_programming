#!/bin/bash

E_NOSUCHFILE=65

read -p "File: " file  # read命令的—p参数用来显示提示符
if [[ ! -e "$file" ]]; then
    echo "File $file not found."
    exit $E_NOSUCHFILE
fi

read -p "Title: " title
cat - $file <<<$title > $file.new   # 这里的减号 - 表示标准输入，因为cat命令本身不是输入命令，- 用来接收here string的输入
echo "Modified file is $file.new"

exit 0