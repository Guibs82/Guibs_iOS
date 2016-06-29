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
@property NSString *name;

/*
    自定义构造方法:(自定义init)
    1.一定是对象方法
    2.一定返回id/instancetype
    3.方法名称一定以init开头, 后面的With一定要大写W
 
    一个类可以有0个或多个构造方法
 */
- (instancetype)initWithAge:(int)age;

- (instancetype)initWithName:(NSString *)name;

// 自定义的构造方法可以有一个或多个参数
- (instancetype)initWithAge:(int)age andName:(NSString *)name;

@end
