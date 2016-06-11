//
//  main.c
//  C021_Array
//
//  Created by 桂朝阳 on 16/6/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    /*
        数组:
        需要保存很多"相同类型"的数据时, 使用数组
        
        数组的定义:
        格式:
        元素类型 数组名称[数据的个数]
        元素类型: 数组中需要存储的数据类型, 一旦指定, 数组中就只能存储该类型的数据
        元素个数: 数组中能够存储的元素个数
     
        只要定义了一个C语言数组, 系统就会自动给数组中的元素编号, 从0开始. 这个编号称之为索引
     */
    int scores[3]; // 定义了一个叫scores 的数组, 可以存放3个int型数据
    scores[0] = 82;
    scores[1] = 90;
    scores[2] = 88;
    
    printf("scores[0] = %i\n", scores[0]);
    printf("scores[1] = %i\n", scores[1]);
    printf("scores[2] = %i\n", scores[2]);
    
    /*
        数组的初始化
     */
    int a1[5] = {1, 2, 3, 4, 5}; // 从索引0的元素开始, 依次将大括号中的每一个值, 赋值给数组中对应的元素 [完全初始化]
    printf("a1[0] = %i\n", a1[0]);
    printf("a1[1] = %i\n", a1[1]);
    printf("a1[2] = %i\n", a1[2]);
    printf("a1[3] = %i\n", a1[3]);
    printf("a1[4] = %i\n", a1[4]);
    
    char a2[5] = {'a', 'b', 'c'}; // 从索引0的元素开始, 依次将大括号中的每一个值, 赋值给数组中对应的元素, 如果没有被初始化, 则默认是0 [部分初始化]
    printf("a2[0] = %i\n", a2[0]);
    printf("a2[1] = %i\n", a2[1]);
    printf("a2[2] = %i\n", a2[2]);
    printf("a2[3] = %i\n", a2[3]);
    printf("a2[4] = %i\n", a2[4]);
    
//    如果未对数组初始化, 则数组中的元素可能为垃圾数据(随机值).
//    定义数组的时候, 数组的元素个数不能使用变量, 如果使用变量, 则数组中是一些随机值 (int scores[num] ×), 对这种数组进行初始化, 程序会报错
    
//    对数组指定元素赋值 {[索引] = 值, [索引] = 值}
    int a3[4] = {9, [2] = 1, [1] = 2};
    printf("a3[0] = %i\n", a3[0]);
    printf("a3[1] = %i\n", a3[1]);
    printf("a3[2] = %i\n", a3[2]);
    printf("a3[3] = %i\n", a3[3]);
    
//    如果定义的同时进行初始化, 则元素个数可以省略, 省略后, 数组的元素个数就是初始化时赋值的元素个数.
    int a4[] = {1, 2, 3};
//    通过数组的字节数和元素类型的字节数的商, 来计算数组长度
    int lengthOfA4 = sizeof(a4) / sizeof(int);
    printf("length of a3 = %i\n", lengthOfA4);
    
//    便利数组a3
    for (int i = 0; i <= lengthOfA4; i++) {
        printf("a4[%i] = %i\n", i, a4[i]);
    }
    
    return 0;
}
