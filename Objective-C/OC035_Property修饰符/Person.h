//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"
#import "Car.h"

@interface Person : NSObject
{
    Room *_room;
    Car *_car;
}

- (void)setRoom:(Room *)room;
- (void)setCar:(Car *)car;

- (Room *)room;
- (Car *)car;

/*
    注意: 
        1.相同类型的修饰符不能同时使用
        2.不同类型的修饰符, 可以以","隔开, 多个一起使用
        3.绝大多数情况下, 在iOS开发中, 第一个属性就是nonatomic
 */
@property(retain) NSString *name;

/*
    @property修饰符:
    readonly: 只会生成getter方法
    readwrite: 既会生成setter又会生产getter [默认]
    getter = method: 自定义getter方法名
    setter = method: 自定义setter方法名
    retain: 自动帮我们生成set内存管理的代码
    assign: 不会帮我们生成set内存管理的代码, 仅仅生成普通的getter&setter [默认]
    多线程:
    atomic: 性能低(默认) [类比单线程]
    nonatomic: 性能高 [类比多线程]
 */
//@property int age;

@end
