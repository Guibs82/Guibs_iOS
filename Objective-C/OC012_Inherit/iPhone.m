//
//  iPhone.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone

// 如果子类中有和父类同名的方法, 则称之为方法重写
// 注意:
//    继承中方法调用的顺序: 如果自己有, 就调用自己的. 如果没有, 就调用父类的 [先自己, 如果没有再父类, 如果还没有再父类的父类...]
//    如果一直找不到, 就报错: +/-[Method Name]: unrecognized selectoer sent to instance [address]


// 继承中, 可以重写父类的方法. 但是属性(成员变量)是不能重写的

/*
    继承的优点:
        1.提高代码复用性
        2.让类与类之间产生关系, 真是因为类与类之间产生了关系, 所以才有了多态
    缺点: 耦合性太强
 */

- (void)signalWithNumber:(NSString *)number {
    NSLog(@"利用iPhone 打电话给%@", number);
}

- (void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content {
    NSLog(@"利用iPhone发送短信\"%@\"给%@", content, number);
}

@end
