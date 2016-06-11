//
//  main.c
//  C020_TypeDescriptor
//
//  Created by 桂朝阳 on 16/6/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    /*
        类型说明符:
        1.说明长度的(他可以用于修改类型所占用的存储空间的大小)
        short; == short int --> 2字节 --> %hi %hd
        long; == long int --> 8字节(64位下) --> %li %ld
        long long; == long long int --> 8字节 --> %lli %lld
        2.说明符号位(他可以用于修改符号位)
        unsigned; 有符号(默认)
        signed; 无符号 --> %u
     */
    
//    short int --> 2字节 --> -2(15) ~ 2(15) - 1
//    short int = short
//    用hi% 或 hd% 输出
    short int num0 = 12345678901;
    printf("num0 = %hi", num0);
    
//    int --> 4字节 --> -2(31) ~ 2(31) - 1
    int num1 = 12345678901;
    printf("num1 = %i\n", num1);

//    long int --> 8字节 --> -2(63) ~ 2(63) - 1
//    long int == long
//    用li% 或 ld% 输出
    long int num2 = 12345678901;
    printf("num2 = %li\n", num2);
    
//    long long int
//    long long int == long long
//    64位下与long 没什么区别
//    32位下, long 占4个字节, long long 占8个字节
//    用lli% 或 lld% 输出
    long long int num3 = 12345678901;
    printf("num3 = %lli\n", num3);
    
//    signed int 代表可以 正数/负数/0 把二进制的最高位作为符号位, 默认情况下, 所有变量都是signed int
//    unsigned int 代表无符号. 只能是 正数/0
//    unsigned int 使用%u 输出
    
    return 0;
}
