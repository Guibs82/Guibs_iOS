//
//  main.m
//  OC060_集合对象内存管理
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        NSLog(@"p's retainCount is %lu", [p retainCount]);
//        NSMutableArray *arrM = [NSMutableArray array]; // 通过工厂方法, 一般有autorelease机制
        NSMutableArray *arrM = [[NSMutableArray alloc] init];
        
//        1.如果将一个对象添加到数组中, 数组会对对象进行一次retain
        [arrM addObject:p];
        NSLog(@"p's retainCount is %lu", [p retainCount]);
        
        
        
        [p release];
        NSLog(@"p's retainCount is %lu", [p retainCount]);
        
//        当数组对象释放后, 会给数组中的所有对象发送一次release消息
        [arrM release];
        
        NSLog(@"---------");
        
        Person *p2 = [Person new];
        NSLog(@"p2's retainCount is %lu", [p2 retainCount]);
        
        NSMutableArray *arrM2 = [[NSMutableArray alloc] init];
        [arrM2 addObject:p2];
        NSLog(@"p2's retainCount is %lu", [p2 retainCount]);
        
        [p2 release];
        NSLog(@"p2's retainCount is %lu", [p2 retainCount]);
        
//        当数组移除某个对象时, 会对其发送一条release消息
        [arrM2 removeAllObjects];
        
    }
    return 0;
}
