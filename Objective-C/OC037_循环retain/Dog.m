//
//  Dog.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)dealloc
{
//    [_person release];
    self.person = nil;
    
    NSLog(@"%s", __func__);
    [super dealloc];
}

@end
