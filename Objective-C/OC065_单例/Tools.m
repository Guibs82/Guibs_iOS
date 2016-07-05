//
//  Tools.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Tools.h"

@implementation Tools

static Tools *_instance = nil;

+ (instancetype)shareInstance {
    Tools *instance  = [[self alloc] init];
    return instance;
}

// 重写allocWithZone
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    NSLog(@"%s", __func__);
////    由于所有创建方法都会调用该方法, 所以在该方法中, 控制当前对象只创建一次
//    if (_instance == nil) {
//        NSLog(@"创建了一个Tools对象");
//        _instance = [[super allocWithZone:zone] init];
//    }
//    return _instance;
    
//    为了适应多线程
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
//    Tools *t = [[[self class] allocWithZone:zone] init];
//    return t;
//    由于是单例:
    return _instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
//    Tools *t = [[[self class] allocWithZone:zone] init];
//    return t;
    //    由于是单例:
    return _instance;
}

// MRC时, 还需要重写release retain retainCount
- (oneway void)release {
    // 什么都不做
}

- (instancetype)retain {
    return _instance;
}

- (NSUInteger)retainCount {
//    return 1;
//    为了便于程序员沟通, 一般返回一个巨大的值, 说明对象在常量区
    return MAXFLOAT;
}

@end
