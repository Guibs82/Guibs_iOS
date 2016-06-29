//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (void)test {
    NSLog(@"test");
}

- (void)demo {
    NSLog(@"demo");
}

- (void)signalWithNumber:(NSString *)number {
    NSLog(@"Call %@", number);
}

- (void)signalWithNumber:(NSString *)number andContent:(NSString *)content {
    NSLog(@"Call %@, tell %@", number, content);
}

// 调用传入对象的指定方法
- (void)makeObject:(id)obj andSel:(SEL)sel {
    [obj performSelector:sel];
}

@end
