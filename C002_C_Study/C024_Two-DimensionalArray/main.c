//
//  main.c
//  C024_Two-DimensionalArray
//
//  Created by 桂朝阳 on 16/6/17.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    /*
        二维数组: 数组中每一个元素又是一个数组, 那么这个数组就被称之为二维数组
        格式:
        元素类型 数组名称[一维数组的个数][每一个一维数组的元素个数]
        元素类型: 说明二维数组中每个一维数组存储什么类型的数据
        一维数组的个数:说明二维数组有多少个元素
        每一个一维数组的元素个数: 说明二维数组中每一个一维数组的元素个数
     */
    
//    1.定义的同时初始化
    int scores[3][5] = {
        {1, 3, 5, 7, 9}, // 0 // 每一个一维数组都是二维数组的一个元素
        {2, 4, 6, 8, 10}, // 1 //
        {1, 2, 3, 4, 5} // 2 //
    };
    
//    2.先定义再初始化
    char names[2][3];
    names[0][0] = 'g';
    names[0][1] = 'z';
    names[0][2] = 'y';
    names[1][0] = 'z';
    names[1][1] = 's';
    names[1][2] = 'l';
    
//    3.完全初始化
    int wholeScores[3][5] = {
        {1, 3, 5, 7, 9}, // 0 // 每一个一维数组都是二维数组的一个元素
        {2, 4, 6, 8, 10}, // 1 //
        {1, 2, 3, 4, 5} // 2 //
    };
    
//    4.不完全初始化
    int notWholeScores[3][5] = {
        {1, 3, 5, 7, 9}, // 0 // 每一个一维数组都是二维数组的一个元素
        {2, 4,  8, 10}, // 1 //
    };
    
//    5.省略元素个数的两种写法
//    如果在"定义的同时"进行初始化, 那么一维数组的个数可以省略, 系统会自动根据每一个一维数组能够存放多少个元素, 自动根据初始化的值推断出二维数组中一共有多少个元素(多少个一维数组)
    char twoChars1[2][2] = {
        'a', 'b', 'c', 'd'
    };
//      效果同twoChars1
    char twoChars2[][2] = {
        'a', 'b', 'c', 'd'
    };
    
//    获取二维数组中的一维数组的元素的值
    printf("%c\n", names[0][0]);
    
//    如何遍历二维数组
//    1.取出二维数组的每一个元素(一维数组)
//    2.遍历取出的一维数组
    for (int i = 0; i < 2; i++) {
//        1.取出一维数组
//        names[i]
        for (int j = 0; j < 3; j++) {
            printf("name[%i][%i] = %c\n", i, j, names[i][j]);
        }
    }
    
    return 0;
}
