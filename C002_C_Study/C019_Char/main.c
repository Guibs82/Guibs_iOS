//
//  main.c
//  C019_Char
//
//  Created by 桂朝阳 on 16/6/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    /*
        char
            1个字节
     */
    int num;
    char charValue;
    charValue = 'a'; // a == 97(ASCII) == 01100001
    
    int size = sizeof(charValue);
    
    // charValue 的长度
    printf("size = %i\n", size);
    
    // num 的地址
    printf("num = %p\n", &num);
    // charValue 的地址
    printf("charValue = %p\n", &charValue);
    
    // 打印charValue
    printf("%i\n", charValue);
    printf("%c\n", charValue);
    
    // 6 '6' 字符和数字是两个完全不同的数
    char c1 = 6;    // 6
    char c2 = '6';  // 54
    printf("c1 = %i, c2 = %i\n", c1, c2);
    
    // char 类型在某些情况下可以当做int 使用
    // 如果对内存要求严格, 而且需要存储的整数不超过char 类型的取值范围(-127~128), 就可以用char 来代替int
    
    return 0;
}
