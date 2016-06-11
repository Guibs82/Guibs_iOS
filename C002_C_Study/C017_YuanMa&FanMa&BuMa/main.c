//
//  main.c
//  C017_YuanMa&FanMa&BuMa
//
//  Created by 桂朝阳 on 16/6/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
/*
    9 --> 存储在内存中 --> 二进制
    9 --> int --> 4字节 --> 32位
    正数:
    0000 0000 0000 0000 0000 0000 0000 1001 (原码)
    正数的反码就是正数的原码
    正数的补码就是正数的原码
    总结: 正数的原码、补码和反码都是一样的.(三码合一)
 */
    
/*
    -9 --> 存储在内存中 --> 二进制
    -9 --> int --> 4字节 --> 32位
    二进制的第一位是二进制的符号位, 0代表正数, 1代表负数
    正数:
    1000 0000 0000 0000 0000 0000 0000 1001 (原码)
    反码: 符号位不变, 其他位取反
    1111 1111 1111 1111 1111 1111 1111 0110 (反码)
    补码: 反码 + 1
   +0000 0000 0000 0000 0000 0000 0000 0001
    1111 1111 1111 1111 1111 1111 1111 0111 (补码)
    总结: 正数的原码、补码和反码都是一样的.(三码合一)
*/
    
/*
    1. 由于最高位是符号位, 0代表正数, 1代表负数
    2. 如果直接存储原码, 则计算之前还需要判断最高位的正负, 因而出现反码和补码
    
    1 + 1
     0001
    +0001
    -----
     0010  == 2
 
    1 - 1
     0000 0001(+1原码)    0000 0001(+1反码)
    +1000 0001(-1原码)    1111 1110(-1反码)
    ----------          --------------
                         1111 1111 (反码) --> 1000 0000(原码) --> -0 --> 0
 
    1 - 1
    0000 0001(+1原码)    0000 0001(+1补码)
   +1000 0001(-1原码)    1111 1111(-1补码)
    ----------          --------------
                       10000 0000        -溢出-> 0000 0000 --> 0
 
 */
    
    return 0;
}
