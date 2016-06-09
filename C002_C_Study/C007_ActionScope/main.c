//
//  main.c
//  C007_ActionScope
//
//  Created by 桂朝阳 on 16/6/10.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

// 变量作用域

// 全局变量: 定义在函数外的变量
int wholeAreaVariable = 0;

int main(int argc, const char * argv[]) {

//    局部变量(成员变量): 在函数内定义的变量, 其作用域仅限于函数内
    int number; // 变量作用于: 从定义的那一行到大括号的结束或遇到return 为止
    {
        int number;
        number = 10; // 如果自己对应的范围内有, 就使用自己的. 不同范围内可以有同名变量
        printf("%i\n", number); // 10
    }
    printf("%i\n", number); // 0
    
//    内存寻址从大到小, 先定义的变量内存地址一定大于后定义的
    int v1 = 1;
    int v2 = 1;
//    使用&变量名 获取变量地址(存储单元的第一个字节的地址(最小的地址))
//    使用%p 打印变量地址
    printf("%p\n", &v1);
    printf("%p\n", &v2);
    
    return 0; // 结束函数 -- 执行到return 等同于到}, 代表函数结束
}

/*
 类型占字节数
 类型      16位编译器 32位编译器 64位编译器
 char        1        1        1
 int         2        4        4
 float       4        4        4
 double      8        8        8
 short       2        2        2
 long        4        4        8
 longlong    8        8        8
 void        2        4        8
 */