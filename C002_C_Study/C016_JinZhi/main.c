//
//  main.c
//  C016_JinZhi
//
//  Created by 桂朝阳 on 16/6/11.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

/*
    进制
 
    十进制: 逢10进1 (默认)
    二进制: 逢2进1
    八进制: 逢8进1
    十六进制: 逢16进1 (0~9 A~F)
    
    Ps: 进1 --> 当前为归0, 左一位加1
 */

int main(int argc, const char * argv[]) {

//    输出目标: 十进制下的12
//    十进制(默认)
//    i%, d% 输出
    int outNum10 = 12;
    printf("%i\n", outNum10);
    
//    输出目标: 以十进制的方式输出二进制下的1100;
//    使用0b 作为前缀定义二进制数字
    int outNum2 = 0b1100;
    printf("%i\n", outNum2);
    
//    输出目标: 以十进制的方式输出八进制下的14;
//    使用0 作为前缀定义八进制数字
    int outNum8 = 014;
    printf("%i\n", outNum8);
    
//    输出目标: 以十进制的方式输出十六进制下的c;
//    使用0x 作为前缀定义十六进制数字
    int outNum16 = 0xc;
    printf("%i\n", outNum16);
    
    
//    以八进制的形式输出十进制的12
//    %o 输出
    printf("%o\n", outNum10); // 14
    
//    以十六进制的形式输出十进制的12
//    %c 输出
    printf("%x\n", outNum10); // c
    
//    注意: 在C语言中, 没有以二进制输出的占位符
    
/*
    二进制转十进制: 10 --> 1*2^1 + 0*2^0
    二进制转八进制: 三位一划分
    二进制转十六进制: 四位一划分
 */
    
    return 0;
}
