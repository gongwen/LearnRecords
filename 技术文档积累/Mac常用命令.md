#### 目录操作： 
| 命令名 | 功能描述             | 使用举例        |
| ------ | -------------------- | --------------- |
| mkdir  | 创建一个目录         | mkdir dirname   |
| rmdir  | 删除一个目录         | rmdir dirname   |
| mvdir  | 移动或重命名一个目录 | mvdir dir1 dir2 |
| cd     | 改变当前目录         | cd dirname      |
| pwd    | 显示当前目录的路径名 | pwd             |
| ls     | 显示当前目录的内容   | ls -la          |
#### 文件操作：
| 命令名 | 功能描述               | 使用举例                  |
| ------ | ---------------------- | ------------------------- |
| cat    | 显示或连接文件         | cat filename              |
| od     | 显示非文本文件的内容   | od -c filename            |
| cp     | 复制文件或目录         | cp file1 file2            |
| rm     | 删除文件或目录         | rm -rf filename           |
| mv     | 改变文件名或所在目录   | mv file1 file2            |
| find   | 使用匹配表达式查找文件 | find . -name "*.c" -print |
| file   | 显示文件类型           | file filename             |
| touch  | 新建文件               | touch filename            |
#### 选择操作：
| 命令名 | 功能描述                       | 使用举例                  |
| ------ | ------------------------------ | ------------------------- |
| head   | 显示文件的最初几行             | head -20 filename         |
| tail   | 显示文件的最后几行             | tail -15 filename         |
| cut    | 显示文件每行中的某些域         | cut -f1,7 -d: /etc/passwd |
| colrm  | 从标准输入中删除若干列         | colrm 8 20 file2          |
| diff   | 比较并显示两个文件的差异       | diff file1 file2          |
| sort   | 排序或归并文件                 | sort -d -f -u file1       |
| uniq   | 去掉文件中的重复行             | uniq file1 file2          |
| comm   | 显示两有序文件的公共和非公共行 | comm file1 file2          |
| wc     | 统计文件的字符数、词数和行数   | wc filename               |
| nl     | 给文件加上行号                 | nl file1 >file2           |
#### 进程操作：
| 命令名 | 功能描述         | 使用举例      |
| ------ | ---------------- | ------------- |
| ps     | 显示进程当前状态 | ps u          |
| kill   | 终止进程         | kill -9 30142 |

#### 时间操作:
| 命令名 | 功能描述                 | 使用举例   |
| ------ | ------------------------ | ---------- |
| date   | 显示系统的当前日期和时间 | date       |
| cal    | 显示日历                 | cal 4 2016 |
#### Korn Shell 命令:
| 命令名  | 功能描述                       | 使用举例 |
| ------- | ------------------------------ | -------- |
| history | 列出最近执行过的几条命令及编号 | history  |

