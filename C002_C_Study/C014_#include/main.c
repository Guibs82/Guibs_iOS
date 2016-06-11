//
//  main.c
//  C014_#include
//
//  Created by 桂朝阳 on 16/6/11.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h> // 告诉系统printf 函数是存在的(声明printf)
// #include 的作用是将include 右边的文件拷贝到当前文件中.
// #include 不一定要写在文件的顶部
/*
    #include后面的<>和""
    如果使用<>, 代表会先从开发工具的编译环境中查找, 如果编译环境中没找到, 再去系统的编译环境中查找
    如果使用"", 代表会先从当前文件所在的文件夹下查找, 如果没找到, 再去开发工具的编译环境中查找, 如果还没找到再去系统的编译环境中查找
 
    注意: include后面, 可以是文件名, 也可以是路径. 路径包括相对路径和绝对路径
 */

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
