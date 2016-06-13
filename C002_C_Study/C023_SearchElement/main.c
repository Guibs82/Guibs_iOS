//
//  main.c
//  C023_SearchElement
//
//  Created by 桂朝阳 on 16/6/13.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int findKey(int nums[], int length, int key);
void changeJinZhi(int value, int base, int offset);
void printBinary(int num);
void printOct(int num);
void printHex(int num);

int main(int argc, const char * argv[]) {

    int nums[] = {1, 3, 5, 7, 9};
    int length = sizeof(nums) / sizeof(nums[0]);
    int key = 7;
    
    int result = findKey(nums, length, key);
    printf("%i\n", result);
    
    return 0;
}

// 二分法
int findKey(int nums[], int length, int key) {
    int min, max, mid;
    min = 0;
    max = length - 1;
    
    while (min < max) {
//        计算中间值
        mid = (min + max) / 2;
        if (key > nums[mid]) {
            min = mid + 1;
        } else if (key < nums[mid]) {
            max = mid - 1;
        } else {
            return mid;
        }
    }
    return -1;
}

// 转二进制
void printBinary(int num) {
    changeJinZhi(num, 1, 1);
}

// 转八进制
void printOct(int num) {
    changeJinZhi(num, 7, 3);
}

// 转十六进制
void printHex(int num) {
    changeJinZhi(num, 15, 4);
}

// 转换进制
// value: 需要转换的数值
// base: 需要& 的数
// offset: 需要右移的位数
void changeJinZhi(int value, int base, int offset) {
//    1.定义一个数组, 用于保存十六进制中的所有取值
    char charValues[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
//    2.定义一个数组, 用于保存查询后的结果
    char results[32] = {'0'};
//    3.定义一个变量, 用于记录当前需要存储到查询结果数组的索引
    int pos = sizeof(results) / sizeof(results[0]);
    
    while (value != 0) {
//        1.取出1位的值
        int res = value & base; // base: 1(二进制) 7(八进制) 15(十六进制)
//        2.利用取出的值到表中查询对应的结果
        char c = charValues[res];
//        3.存储查询的结果
        results[--pos] = c;
//        4.移除二进制取过的1位
        value = value >> offset;
    }
//    4.打印结果
    for (int i = pos; i < 32; i++) {
        printf("%c", results[i]);
    }
    printf("\n");
}