//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

// 类扩展(匿名分类) --------
// 可以添加属性, 都是私有的(.m中, 外界看不到)
// 作用: 添加私有属性和方法
@interface Person ()

@property(nonatomic, strong) NSString *name;

- (void)sayName;

@end

// 类扩展 ---------


@implementation Person

- (void)eat {
    NSLog(@"eat");
}

- (void)say {
    NSLog(@"My age is %i", _age);
}

- (void)sayName {
    NSLog(@"My name is %@", _name);
}

@end
