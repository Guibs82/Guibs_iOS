//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;

+ (void)test;

- (void)demo;

- (void)signalWithNumber:(NSString *)number;

- (void)signalWithNumber:(NSString *)number andContent:(NSString *)content;

// 调用传入对象的指定方法
- (void)makeObject:(id)obj andSel:(SEL)sel;

@end
