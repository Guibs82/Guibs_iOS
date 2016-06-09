//
//  main.c
//  C008_Printf&Scanf
//
//  Created by 桂朝阳 on 16/6/10.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    /*
        printf格式:
        printf("格式控制字符串", 输出项列表)
        print("要输出的字符串")
     */
    
//    int
    int number = 10;
    int value = 10;
    printf("%i, %i\n", number, value);
//    char
    char charValue = 'a';
    printf("%c\n", charValue);
//    float
    float floatValue = 10.1234567f;
    printf("%f\n", floatValue);
//    double
    double doubleValue = 10.1;
    printf("%lf\n", doubleValue);
    
//    指定位宽
    printf("%5i\n", number); // 5是限定位宽, 位宽过大时, 空格凑(默认右对齐, 左侧补空格[若位宽为负数, 则右侧补空格]). 位宽过小, 则忽略位宽限制
    
//    保留位数
    printf("%f\n", floatValue); // 默认保留6位小数(四舍五入)
    printf("%0.5f\n", floatValue); //  保留5位小数
    printf("%.7f\n", floatValue); // 保留7位, 显示结果10.1234570[因为float有效位数为7位, 原始数据超出有效位数时, 超出部分都为垃圾数据](有效位数从第一个不为0的数开始算)
    printf("%.*f\n",7 ,floatValue); // 可以用* 作为有效位数的占位符
//    double 有效位数15位
    
    return 0;
}
