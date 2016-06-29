//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;

/*
    什么是类工厂方法:
        用于快速创建对象的类方法, 我们称之为类工厂方法
        主要用于给对象分配存储空间和初始化这块存储空间
 
    规范:
        1.一定是类方法
        2.方法名称以类的名称开头, 首字母小写
        3.一定有返回值, 返回值类型是id/instancetype
 
    自定义类工厂方法是苹果的一个规范, 一般情况下, 我们会给一个类提供自定义构造方法和自定义类工厂方法用于创建一个对象
 */

+ (instancetype)person;

@end
