//
//  main.c
//  C022_Sort
//
//  Created by 桂朝阳 on 16/6/13.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

void printArray(int arr[], int length);
void selectSort(int nums[], int length);
void bubbleSort(int nums[], int length);
void swap(int nums[], i, j);

int main(int argc, const char * argv[]) {
    
    /*
        排序:
            已知一个无序的数组, 里面有5个元素, 按顺序排列其中元素
            int nums[5] = {99, 12, 88, 34, 5};
     */
    
    int nums[5] = {99, 12, 88, 34, 5};
    
    int length = sizeof(nums) / sizeof(nums[0]);
    
//    打印排序前
    printf("排序前:\n");
    printArray(nums, length);
    
//    1.选择排序
    selectSort(nums, length);
    
//    2.冒泡排序
    bubbleSort(nums, length);
    
//    打印排序前
    printf("排序后:\n");
    printArray(nums, length);
    
    return 0;
}

// 打印数组
void printArray(int arr[], int length) {
    for (int i = 0; i < length; i++) {
        printf("nums[%i] = %i\n", i + 1, arr[i]);
    }
}

// 交换顺序
void swap(int nums[], int i, int j) {
    int temp;
    temp = nums[i];
    nums[i] = nums[j];
    nums[j] = temp;
}

// 选择排序
void selectSort(int nums[], int length) {
    //    拿到其中一个元素依次和其他元素比较, 完全比较后, 最值出现在第0位
    for (int i = 0; i < length - 1; i++) {
        for (int j = i + 1; j <= length - 1; j++) {
            if (nums[i] > nums[j]) {
                swap(nums, i, j);
            }
        }
    }
}

// 冒泡排序
void bubbleSort(int nums[], int length) {
    //    用相邻的两个元素比较, 比较完最值出现在末尾
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < length - 1; j++) {
            if (nums[j] > nums[j + 1]) {
                swap(nums, i, j+1);
            }
        }
    }
}