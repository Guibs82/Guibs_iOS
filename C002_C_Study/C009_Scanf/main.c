//
//  main.c
//  C009_Scanf
//
//  Created by 桂朝阳 on 16/6/10.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
//    Command + \ 添加/删除断点
    
    /*
        scanf 函数是一个阻塞式函数
        scanf("格式控制字符串", 输入项地址列表)
     */
//    1.定义变量
    int num1, num2;
//    2.利用scanf 函数接收用户输入的数据
    scanf("%i\n %i", &num1, &num2); // 必须告诉scanf 函数变量的详细地址; \n 表示两个数以回车作为分隔符
    scanf("%i, %i", &num1, &num2); // 必须告诉scanf 函数变量的详细地址; , 表示两个数以, 作为分隔符
    scanf("%i%i", &num1, &num2); // 必须告诉scanf 函数变量的详细地址; 此时可以以空格、回车、Tab作为两个数字的分隔符
//    若格式控制字符串中有%c, 则%c 是可以接收回车、空格的
//    3.输出接收到的数据
    printf("%i\n", num1+num2);
    
//    由于回车是scanf 的结束符, 所以不能再scanf 的格式化字符串的末尾加上\n. 如果加到了末尾, 则在输入时输入\n 或者一个不匹配类型, 也可结束scanf 的阻塞(因为除Tab、空格、回车, 输入与scanf 不匹配的内容, 就会结束scanf 函数, 且不会修改对应变量的值, 也不会取走缓冲区中保存的该内容)
    
//    scanf 只要缓冲区中有内容, 就不会要求用户输入数据
//    getchar() 从输入缓冲区中获取字符
    return 0;
}
