## 脚本运行
```shell
#!/bin/bash
NUM=10
printf "输出数字$NUM\n"
echo $NUM
```
### 执行脚本，权限不足的时候给脚本添加权限
```shell
chmod +x ./demo1.sh # 使每个人都有执行权限
chmod +rx ./demo1.sh # 每个人都有读和执行读权限
chmod u+rx ./demo.sh # 只有脚本读拥有者有读和执行权限
chmod u+x ./demo1.sh # 只有自己可以执行，其他人不能执行
chmod ug+x ./demo1.sh # 只有自己和同一群可以执行，其他人不能执行
chmod 555 ./demo1.sh # 每个人都有读和执行读权限
chmod 777 ./demo1.sh # 
```
**将脚本移动到`/usr/local/bin`目录后可以直接调用脚本**
使用`sh <script_name>`和`bash <script_name>`的不同
```shell
# 使用sh运行脚本将会禁用所有bash相关的特性
sh shell_name
#指定脚本的解释器为bash
#!/bin/bash
#!/bin/rm 运行这个脚本时，会直接删除这个脚本
#!会调用指定的脚本命令,后面添加的是命令位置
```

```shell
#!/bin/bash
echo "a comment willfollow" # 注释
echo "a comment will # follow" # 在字符串中的#不会被认定为注释
echo 这里的#不会注释
echo 这里的\#不会注释
echo 这里的 #会注释
echo ${PATH:#*} # 前面的#是参数代换，不是注释
echo $((2#101011)) # 基本转换不是注释
```
### 命令分隔符
分号`;`命令分隔符，分隔符允许同一行有两个或更多的命令

### 结束符
双分号`;;`, case语句分支的结束符

### 引号
引号一个很重要的作用是保护命令行上的一个参数不被shell解释，而把此参数传递给要执行的程序来处理它。
```shell
#!/bin/bash
grep '[Ff]ile' demo*
# 引号能改掉echo's不换行的问题
echo $(ls -al)
echo "$(ls -al)"
```
### 单引号
```shell
str='this is a string'
```
1. 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
2. 单引号字串中不能出现单引号，对单引号转义也不行

### 双引号
1. 双引号里可以有变量
2. 双引号里可以出现转义字符
```shell
your_name='cowboy'
str="Hello, I know your ar \"$your_name\"!\n"
```

### 命令替换
将会重新分配一个命令甚至是多个命令的输出，它会将命令的输出如实的添加到另一个上下文中
```shell
#!/bin/bash
script_name=`basename $0`
echo "The name of this script is $script_name"
textfile_listing=`ls *`
echo "$textfile_listing"
```
批量删除文件:
```shell
rm `cat filename`
# 可能会产生参数列表太长的错误
# 更好的方法: xargs rm -- < filename
# -- 同时覆盖了哪些易"-"开头的文件所产生的特殊情况
```

## 操作符
### 赋值
```shell
var=27
category=minerals # '='字符后面不能加空白字符
```
不要把"="赋值操作符和`=`测试操作符混淆了
```shell
if [ "$string1" = "$string2"]
# [ "X$string1" = "X$string2 ] 会更安全
# 它为了防止其中有一个字符串为空时产生错误信息
# 增加"X"字符可以相互抵消
then 
  command
fi
```
### 计算操作符
| 操作符 | 描述 |
|-----|----|
| `+` | 加 |
| `-` | 减 |
| `/` | 除 |
| `*` | 乘 |
| `**` | 求幂 |
| `%` | 求模 |
```shell
```
