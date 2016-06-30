//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

/*
    当A对象要使用B对象, 一定要对B对象retain
    当A对象释放的时候, 一定要对B对象release
 */

- (void)setRoom:(Room *)room {
    // 赋值之前, 应该对房间的引用计数器加1
    [room retain];
    _room = room;
}

- (Room *)room {
    return _room;
}

- (void)dealloc
{
    // 释放room
    [_room release];
    
    NSLog(@"%s", __func__);
    [super dealloc];
}

@end
