//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)person {
//    Person *p = [Person alloc];
//    Person *p1 = [p init];
//    return p1;
    
//    return [[Person alloc] init];
    
//    注意: 但凡自定义类工厂, 一定不能使用类名在类工厂方法中创建对象. 一定要使用self来创建!
//    self 在类方法中代表当前调用类方法的类对象
    return [[self alloc] init];
}

@end
