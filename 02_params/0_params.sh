#! /bin/bash
echo "shell参数如下:"
echo '$0代表文件名:'$0
echo '$1代表命令行的第一个参数:'$1
echo '$2代表命令行的第二个参数:'$2
:<<!
echo $3
!
echo $#
echo $*
echo '[$*]以C语言的数组的形式显示所有命令行参数:'[$*]
echo '$*以C语言字符串的形式显示所有命令行参数:'$*
echo $@
echo '[$@]以C语言数组的形式显示所有命令行参数:'[$@]
echo '$@以C语言数组的形式显示所有命令行参数:'$@
echo $$
echo $!

func(){
      echo "func的第一个参数:$1"
      echo "func的参数个数:$#"
}
func 12 34 56
echo $?
