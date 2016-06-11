//
//  main.c
//  C015_MultiDocumentDevelopment
//
//  Created by 桂朝阳 on 16/6/11.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

/*
    多文件开发
 */

// 导入要使用的文件的头文件
#include "sum&average.h"

int main(int argc, const char * argv[]) {
    
    printf("sum = %i\n", sum(10, 10));
    printf("average = %i\n", average(15, 25));
    
    return 0;
}
