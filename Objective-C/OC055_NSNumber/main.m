//
//  main.m
//  OC055_NSNumber
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 1;
        double b = 2.1;
        int c = 3;
        
        // 将基本数据类型转换为对象类型
        NSNumber *numA = [NSNumber numberWithInt:a];
        NSNumber *numB = [NSNumber numberWithDouble:b];
        NSNumber *numC = [NSNumber numberWithInt:c];
        
        NSArray *arr = @[numA, numB, numC];
        NSLog(@"%@", arr);
        
//        将对象转换为基本数据类型
        int a1 = [numA intValue];
        NSLog(@"%i", a1);
        double b1 = [numB doubleValue];
        NSLog(@"%lf", b1);
        
//        基本数据类型转对象简写
        NSNumber *temp1 = @(a);
        NSNumber *temp2 = @1;
        NSLog(@"%@", temp1);
        NSLog(@"%@", temp2);
    }
    return 0;
}
