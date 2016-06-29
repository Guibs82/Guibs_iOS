//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

// instancetype == id == 万能指针
// id在编译时不能判断对象的真实类型
// instancetype在编译时判断对象的真实类型
// id可以定义变量, 作为返回值, 作为形参
// instancetype只能作为返回值
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.age = 24;
    }
    return self;
}

@end
