//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;

@interface Person : NSObject

// MRC: A对象想拥有B对象, 需要对B对象进行一次retain
//      A对象不想要B对象了, 需要对B对象进行一次release
//      @property时(retain), dealloc时release

// ARC: A对象想拥有B对象, 那么就要用一个强指针指向B对象
//      A对象不想要B对象了, 那么什么都不用做

// 在ARC中, 使用strong, 相当于MRC中的retain
// 在ARC中, 不要用assign保存对象, 用weak[assign只用于保存基本数据类型]

// 同MRC中的循环retain, ARC中两个对象相互拥有时, 一个用strong, 一个用weak

@property(nonatomic, strong) Dog *dog;

@end
