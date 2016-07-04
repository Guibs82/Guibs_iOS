//
//  main.m
//  OC051_NSMutableArray
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        创建一个空的可变数组
//          注意: 不能通过@[] 创建可变数组. 因为@[] 是创建不可变数组, 若当成可变数组, 会引发运行时错误
        NSMutableArray *arrM = [NSMutableArray array];
        NSLog(@"%@", arrM);
        
//        添加元素
        [arrM addObject:@"Guibs1"];
        NSLog(@"%@", arrM);
//        addObjectsFromArray: 是将一个数组中的元素挨个取出添加到arrM中, 而非将数组作为元素添加到arrM中
        [arrM addObjectsFromArray:@[@"Guibs2", @"Guibs3"]];
        NSLog(@"%@", arrM);
        
//        插入元素
        [arrM insertObject:@"Guibs4" atIndex:3];
        NSLog(@"%@", arrM);
        
        NSIndexSet *set = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(4, 2)]; // 插入位置和插入个数
//        插入一组数据, 指定插入位置和个数.
        [arrM insertObjects:@[@"Guibs5", @"Guibs6"] atIndexes:set];
        NSLog(@"%@", arrM);
        
//        删除元素
        [arrM removeObject:@"Guibs5"];
        NSLog(@"%@", arrM);
        [arrM removeObjectAtIndex:1];
        NSLog(@"%@", arrM);
        [arrM removeLastObject];
        NSLog(@"%@", arrM);
        
//        替换元素
        [arrM replaceObjectAtIndex:1 withObject:@"Guibs"];
        NSLog(@"%@", arrM);
        
//        获取元素
        NSLog(@"%@", [arrM objectAtIndex:2]);
        NSLog(@"%@", arrM[0]);
    }
    return 0;
}
