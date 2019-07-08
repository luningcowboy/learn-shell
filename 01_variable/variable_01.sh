# 定义变量的三种方式
v1=value
v2='value'
v3="value"
# 等号的周围不能有空格
echo ${v1},${v2},${v3}
url=https://www.baidu.com/
echo $url
name='变量'
echo $name
author='cowboy'
echo $author
# 单引号和双引号的区别
# 单引号中包含什么就会输出什么,包含的命令和变量会原样输出
# 双引号包围的变量输出时，会解析里面的变量和命令，而不是把双引号中的命令和变量原样输出
echo '${name},${author}'
echo "${name},${author}"
myUrl="www.sina.com"
# 使用readonly修饰的变量为只读变量，不能修改
readonly myUrl
# 使用unset命令和删除变量，unset命令不能删除只读变量
unset myUrl

