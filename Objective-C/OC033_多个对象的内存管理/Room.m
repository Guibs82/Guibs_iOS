//
//  Room.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Room.h"

@implementation Room

- (void)dealloc
{
    NSLog(@"%s, no is %i", __func__, _no);
    [super dealloc];
}

@end
