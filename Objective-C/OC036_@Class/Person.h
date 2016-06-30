//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import 是预编译指令, 会将""中的文件拷贝到当前位置, 且#import 有一个特点, 只要""中的文件发生变化, 就会重新拷贝
//#import "Car.h"

@class Car; // @class 只会告诉编译器, @class 后面是一个类, 不会做任何拷贝操作
// 注意: 由于@class 仅仅会告诉编译器后面是一个类, 所以编译器并不知道这个类中有哪些属性和方法, 所以在.m 中要#import 这个类才可以使用

/*
    总结:
    1.如果都在.h中#import, 假如A拷贝(#import)了B, B拷贝(#import)了C, 如果C修改了, 则B和A都需要重新拷贝
    2.如果在.h中@class, 在.m中#import, 则当被#import的文件发生了变化后, 只有与其有直接关系的文件, 才会重新拷贝(#import)
    3.如果在.h中使用@class, 可以提高编译效率
    4.如果两个类相互拷贝, 则在.h中使用@class, 在.m中使用#import, 防止循环导入(死循环)
 */

@interface Person : NSObject

@property(nonatomic, retain) Car *car;

@end
