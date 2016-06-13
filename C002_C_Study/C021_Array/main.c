//
//  main.c
//  C021_Array
//
//  Created by 桂朝阳 on 16/6/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void changeVariable(int value);
void changeArray(int values[]);

int main(int argc, const char * argv[]) {
    
    /*
        数组:
        需要保存很多"相同类型"的数据时, 使用数组
        
        数组的定义:
        格式:
        元素类型 数组名称[数据的个数]
        元素类型: 数组中需要存储的数据类型, 一旦指定, 数组中就只能存储该类型的数据
        元素个数: 数组中能够存储的元素个数(只能是整型或者返回整型常量的表达式)
     
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
    
    /*
        变量在内存中的存储:
        由于变量的内存寻址是从大到小, 所以存储数据时, 会从高字节开始存储
        注意:
        数组的存储和变量有点不同, 数组存储元素, 是从数组的内存区域内的低字节开始存储.[因此, 数组中第一个元素的地址, 就是数组地址](Ps: 每个元素的存储规律还是按照变量的存储规律, 从高字节开始存储)
     */
    char charValues[4] = {'l', 'u', 'c', 'k'};
    printf("charValues = %p\n", &charValues);
    printf("charValues[0] = %p\n", &charValues[0]); // 由于数组元素的存储方式, 该地址也是该数组的存储地址
    printf("charValues[1] = %p\n", &charValues[1]);
    printf("charValues[2] = %p\n", &charValues[2]);
    printf("charValues[3] = %p\n", &charValues[3]);
    
//    注意: 在使用数组时, 一定不要访问不属于这个字节的存储空间, 这样会导致数据混乱(如果两个相邻的数组, 对一个进行越界操作, 可能影响另一个数组的元素的值)
    
    /*
        数组和函数
     */
    
//    注意: 基本数据类型作为函数的参数是值传递, 数组是值引用(传递地址)[实质: 传递指针]
//      如果形参是基本数据类型, 在函数中修改形参的值, 不会影响实参的值
//      如果形参是数组, 在函数中修改数组元素, 会影响到数组元素的值.
//    数组名就是数组的地址: &aV = &aV[0] = aV
    
//    如果数组作为形参, 那么在函数中酒不能通过数组的名称计算出数组的元素个数 -- 因为系统会自动将数组形参转换为指针, 指针占用8个字节(64位编译环境下) -- 所以: 要在函数中使用数组长度, 必须在函数外计算后, 传入函数
    
    int cV = 8;
    changeVariable(cV);
    printf("%i\n", cV);   // 8
    
    int aV[] = {9, 2};  // aV 的存储空间存的是aV[] 的地址
    changeArray(aV);
    printf("%i\n", aV[0]); // 88
    
    
    return 0;
}

void changeVariable(int value) {
    value = 55;
}

void changeArray(int values[]) {
    values[0] = 88;
}
