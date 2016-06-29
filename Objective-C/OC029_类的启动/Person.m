//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person
/*
    只要程序启动, 就会将所有类的代码加载到内存中的代码区
    load方法会在当前类加载到内存时调用, 且只会调用一次
    如果存在继承关系, 会先调用父类的load
 */
+ (void)load {
    NSLog(@"加载Person类");
}

/*
    当类第一次被使用时, 调用initialize, 在整个程序运行过程中只会调用一次
    用于对某一个类的一次性初始化
    和load一样, 如果存在继承关系, 会先调用父类的initialize
 */
+ (void)initialize {
    NSLog(@"Person initialize");
}
@end
