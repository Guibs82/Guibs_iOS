//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/27.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    // 实例变量, 既可以在interface 中定义, 也可以在implementation 中定义
    // 写在implementation 中的实例变量, 默认就是private 的, 且和在interface 中定义的private 不一样
    // 在implementation 中定义的实例变量, 在其他类中无法看到
    NSString *_hobby;
}


// 如果只有方法的实现, 没有方法的声明, 则该方法是私有的
// 在OC中没有真正的私有方法, 由于OC的消息机制, 方法都是动态绑定的 (使用id等其他方法, 仍可以使用某个私有方法)
- (void)sayHobby {
    _hobby = @"Apple"; // 只能在本类中使用
    NSLog(@"hobby is %@", _hobby);
}

@end
