//
//  iPhone.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone

- (void)signalWithNumber:(NSString *)number {
    NSLog(@"打开FaceTime");
    /*
        super 是一个编译器指令符号
        只需利用super 给父类的方法发送一个消息, 就可以调用父类的方法
        如果以后想再子类中调用父类的方法, 可以使用super
     
        如果父类中存在同名的类方法和静态方法, 则当super 在类方法中, 则调用父类的类方法. 当super 在对象方法中, 则调用父类的对象方法
     */
    [super signalWithNumber:number];
}

- (void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content {
    NSLog(@"打开iMessage");
    [super sendMessageWithNumber:number andContent:content];
}

@end
