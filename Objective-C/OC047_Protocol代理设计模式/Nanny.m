//
//  Nanny.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Nanny.h"
#import "Baby.h"

@implementation Nanny


- (void)feedFood:(Baby *)baby {
    baby.hungryLevel -= 5;
    NSLog(@"喂宝宝吃东西, 目前饥饿程度%i", baby.hungryLevel);
}

- (void)coaxSleep:(Baby *)baby {
    baby.sleepyLevel -= 5;
    NSLog(@"哄宝宝睡觉, 目前困意程度%i", baby.sleepyLevel);
}

@end
