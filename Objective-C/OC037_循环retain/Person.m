//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
//    [_dog release];
    NSLog(@"%s", __func__);
    [super dealloc];
}

@end
