//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone {
    // 1.创建一个新对象
    id obj = [[[self class] allocWithZone:zone] init];
    
    // 2.设置当前对象的内容, 给新对象
    [obj setName:[self name]];
    [obj setAge:[self age]];
    
    // 3.返回新对象
    return obj;
}

@end
