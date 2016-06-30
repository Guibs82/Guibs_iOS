//
//  Car.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Car.h"
#import "Wheel.h"

@implementation Car

- (void)dealloc
{
    [_wheel release];
    [super dealloc];
}

@end
