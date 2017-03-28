#!/bin/bash
true
echo "exit status of \"true\" = $?"    # 0

#注意: "!" 需要一个空格.
! true
echo "exit status of \"! true\" = $?"  # 1