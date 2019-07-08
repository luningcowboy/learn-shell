#!/bin/bash
# 定义函数
function func(){
  # shell函数中定义的变量默认也是全局变量，它和在函数外部定义变量拥有一样的效果
  a=99
  # 使用local命令可以限制变量的作用域，这样变量就不是全局的了
  local b=100
}
# 调用函数
func
echo ${a},${b}
# shell的全局变量对当前shell进程有效，并不是当前的shell脚本有效
