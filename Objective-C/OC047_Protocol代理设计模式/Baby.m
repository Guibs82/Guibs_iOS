//
//  Baby.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Baby.h"
#import "Nanny.h"

@implementation Baby

- (void)needEat {
    self.hungryLevel += 5;
    NSLog(@"要吃东西, 目前饥饿程度%i", self.hungryLevel);
    // 通知保姆
    [self.nanny feedFood:self];
}

- (void)needSleep {
    self.sleepyLevel += 5;
    NSLog(@"要睡会觉, 目前困意程度%i", self.sleepyLevel);
    // 通知保姆
    [self.nanny coaxSleep:self];
}

@end
