//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"
#import "Car.h"

@implementation Person

- (void)dealloc
{
    [_car release];
    [super dealloc];
}

@end
