//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/28.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

/*
    如果, 给一个属性同时提供了getter&setter, 则该属性为可读可写属性
    如果, 给一个属性只提供了getter, 没提供setter, 则该属性为只读属性
    如果, 给一个属性只提供了setter, 没提供getter, 则该属性为只写属性
    如果, 给一个属性即没提供getter, 也没提供setter, 则该属性为私有属性
 
    格式:
    @property(属性修饰符) 数据类型 变量名称;
 */

@property(readonly) int age; // 只读
@property(readwrite) NSString *name; // 可读可写[默认]
@property(getter=returnHeight, setter=giveHeight:) double height; // 修改getter setter 的方法名
@property double weight;

@end
