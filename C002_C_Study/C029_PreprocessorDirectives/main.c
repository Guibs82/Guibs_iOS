//
//  main.c
//  C029_PreprocessorDirectives
//
//  Created by 桂朝阳 on 16/6/19.
//  Copyright © 2016年 NexTed. All rights reserved.
//

//    1.预处理指令: 在文件编译成0和1之前的操作, 一般是以# 开头
/*
        注意: 
        1.#include <> 会先从编译环境下找, 找不到再去系统找 #include "" 会先去当前文件找, 找不到再去编译环境找, 再找不到再去系统环境下找
        2.导入时, 注意函数可以重复声明, 但不能重复定义
        3.重复导入会降低编译效率, 为了防止重复导入, 在.h 中添加 
            #ifndef __XX__H__ 判断是否导入叫XX.H 的宏
            #define __XX__H__ 定义一个叫XX.H 的宏
            statement;
            statement;
            #endif
        4.注意循环导入问题
        5.简介拷贝(导入的.h文件中含有#include xxx.h)
*/
#include <stdio.h>

//    2.宏定义:
//        格式: 1.不带参数的宏定义: #define 宏名称 值 2.带参数的宏定义: #define 宏名称(参数) // 参数不需要写数据类型
#define OUT_COUNT 4
#define CF(v1, v2) ((v1) * (v2))
// #define: 定义一个宏
// SUM: 宏的名称
// (v1, v2): 参数, 不需要写类型
// v1 + v2: 要替换的内容

//        作用: 会在程序翻译成0和1之前, 将所有宏名处 替换成对应的值
//        规范: 1.宏名都大写, 多个单词之前用 _ 隔开 2.宏定义后不能加 ; 3.如果宏名写在双引号中, 不会被替换 4.宏定义也有作用域, 从第一的那一行一直到文件末尾 [可以通过(#undef 宏名) 来提前结束作用域]

// 如果函数内部功能比较简单, 仅仅是简单的运算可以考虑宏定义, 效率高. 如果内部功能复杂, 建议使用函数

// 带参数的宏定义注意点:
//    1.建议写带参数的宏的时候, 给每一个参数加一个() 2.建议写带参数的宏的时候, 给每一个结果加一个()


int condiction = 100;


int main(int argc, const char * argv[]) {
    
    printf("%i\n", OUT_COUNT);
    
    printf("%i\n", CF(1 + 3, 3 + 5)); // CF(1 + 3, 3 + 5) --> CF)(1 + 3 * 3 + 5) --> 15
    
//    3.条件编译(编译前)
//        只将满足条件的部分编译到二进制文件中
//      注意: 不能用来判断变量, 因为生命周期不同, 一般与宏定义结合使用
#if OUT_COUNT == 5
    printf("条件编译1\n");
#elif OUT_COUNT == 4
    printf("条件编译2\n");
#else
    printf("条件编译3\n");
#endif // 不可少!!
    
#ifndef OUT_COUNT
    printf("没定义OUT_COUNT");
#endif
    
#ifdef OUT_COUNT
    printf("定义了OUT_COUNT");
#endif
    
    return 0;
}
