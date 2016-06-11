//
//  main.c
//  C018_BitwiseOperation
//
//  Created by 桂朝阳 on 16/6/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

// 根据输入的数字, 输出其对应的二进制
void printBinay(int value) {
    // 右移的位数
    int offset = 31;
    // 循环取出每一位
    while (offset >= 0) {
        int result = (value >> offset) & 1;
        printf("%i", result);
        // 每次取出一位, 将偏移量-1
        offset--;
        // 四位一空格
        if ((offset + 1) % 4 == 0) {
            printf("  ");
        }
    }
    printf("\n");
}

// 判断某个数字奇偶性
// 偶数的二进制最后一位是0, 奇数是1
void oddEven(int num) {
    if (num & 1) {
        printf("奇数\n");
    } else {
        printf("偶数\n");
    }
}

// 交换两个变量的值
void changeValue(int a, int b) {
    printf("a = %i, b = %i\n", a, b);
    a = a ^ b;
    b = a ^ b;
    a = a ^ b;
    printf("a = %i, b = %i\n", a, b);
}

int main(int argc, const char * argv[]) {
    
    /*
        位运算
        & 按位与
        | 按位或
        ^ 按位异或
        ~ 取反
     */
    
    /*
        & 按位与
        规律: 一假则假 (1真 0假) [任何数&1, 结果就是那个数]
        9 & 5 = ?
        1001
       &0101
      ------
        0001  == 1
     */
    
    /*
        | 按位或
        规律: 一真则真 (1真 0假) [任何数&0, 结果都是0]
        9 | 5 = ?
        1001
       &0101
      ------
        1101  == 13
    */
    
    /*
        ^ 按位异或
        规律: 
            1.相同为0, 不同为1 [异或的结果和参与运算的顺序没有关系]
            2.相同的两个数异或为0 (5 ^ 5 = 0)
            3.任何数异或0, 结果不变 (9 ^ 0 = 9)
            4.任何数异或同一个数两次, 结果不变 (9 ^ 5 ^ 5 = 9 ^ 0 = 9)
        9 ^ 5 = ?
        1001
       &0101
      ------
        1100  == 12
    */
    
    /*
        ~ 取反
        ~9 = ?
        0000 0000 0000 0000 0000 0000 0000 1001
       ~
        1111 1111 1111 1111 1111 1111 1111 0110 (补码)
       -0000 0000 0000 0000 0000 0000 0000 0001
      ------------------------------------------
        1111 1111 1111 1111 1111 1111 1111 0101 (反码)
        1000 0000 0000 0000 0000 0000 0000 1010 (原码)  == -10
     */
    
//    左移&右移: 如果想让某个数乘以2的n次幂, 或者除以2的n次幂, 最高效的方式就是位运算
    
    /*
        左移 x << n
        规律: x * 2^n
     
        9 << 1
        0000 0000 0000 0000 0000 0000 0000 1001
     (0)000 0000 0000 0000 0000 0000 0000 10010  --> 18
     
        注意: 被移动的数的最高位会被移除, 所以左移可能会改变数字的正负性
     */
    printf("%i\n", 9 << 1);
    
    /*
        右移 x >> n
        规律: x / 2^n (int, 保留整数)
     
        9 << 1
        0000 0000 0000 0000 0000 0000 0000 1001
          0000 0000 0000 0000 0000 0000 0000 10[01]
        0000 0000 0000 0000 0000 0000 0000 0010   = 4
        */
    printf("%i\n", 9 >> 1);

//    打印某个数字的二进制形式
    printBinay(10);
    
//    判断奇偶性
    oddEven(10);
    
//    交换变量的值
    changeValue(10, 20);

    return 0;
}
