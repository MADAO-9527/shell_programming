#!/bin/bash

NO_ARGS=0
E_OPTERROR=65

if [[ $# -eq "$NO_ARGS" ]]; then
    echo "Usage: `basename $0` options (-mnopqrs)"
    exit $E_OPTERROR
fi

while getopts "：mnopq:rs" Option ; do
    # q后面的:表示选项q需要一个参数，否则会出错。
    # 而m前面的:就是屏蔽错误信息的。因为我们一般都会有默认处理。也就是*。
    case $Option in
        m ) echo "Scenario #1: option -m- [OPTIND=${OPTIND}]" ;;
        n | o ) echo "Scenario #2: option -$Option- [OPTIND=${OPTIND}]" ;;
        p ) echo "Scenario #3: option -p- [OPTIND=${OPTIND}]" ;;
        q ) echo "Scenario #4: option -q- with argument \"$OPTARG\" [OPTIND=${OPTIND}]" ;;
        r | s ) echo "Scenario #5: option -$Option-" ;;
        * ) echo "Unimplemented option chosen." ;;
    esac
done

shift $(($OPTIND - 1))

exit 0