#!/bin/bash
echo "a comment willfollow" # 注释
echo "a comment will # follow" # 在字符串中的#不会被认定为注释
echo 这里的#不会注释
echo 这里的\#不会注释
echo 这里的 #会注释
echo ${PATH:#*} # 前面的#是参数代换，不是注释
echo $((2#101011)) # 基本转换不是注释
