//
//  main.m
//  OC056_NSValue
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSValue 是NSNumber 的父类, 可以包装任意类型
//        1.利用NSValue包装常用的结构体
        CGPoint point = CGPointMake(10, 20);
        NSValue *pointValue = [NSValue valueWithPoint:point];
        NSArray *arr = [NSArray arrayWithObject:pointValue];
        NSLog(@"%@", arr);
//        2.利用NSValue包装自定义结构体
        typedef struct {
            int age;
            char *name;
            double height;
        }Person;
        Person p = {24, "Guibs", 185};
//        valueWithBytes: 接收一个指针[需要包装的结构体地址]
//        objCType:@encode(XXX) 需要包装的数据类型(XXX)
        NSValue *objValue = [NSValue valueWithBytes:&p objCType:@encode(Person)];
        NSArray *arr_obj = [NSArray arrayWithObject:objValue];
        NSLog(@"%@", arr_obj);
//        从NSValue中取出结构体变量
        Person structP;
        [objValue getValue:&structP];
        NSLog(@"age is %i, name is %s, height is %lf", structP.age, structP.name, structP.height);
        
    }
    return 0;
}
