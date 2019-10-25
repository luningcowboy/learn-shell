#!/bin/bash
grep '[Ff]ile' demo*
# 引号能改掉echo's不换行的问题
echo $(ls -al)
echo "$(ls -al)"
# 单引号
your_name='cowboy'
str="Hello, I know your ar \"$your_name\"! \n"
echo $str
