//
//  Student.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)copyWithZone:(NSZone *)zone {
//    1.创建副本对象
//    id obj = [[[self class] allocWithZone:zone] init];
//    [obj setName:[self name]];
//    [obj setAge:[self age]];
//    调用父类中的方法
    id obj = [super copyWithZone:zone];
    [obj setHeight:[self height]];
    return obj;
}

@end
