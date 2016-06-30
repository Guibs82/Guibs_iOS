//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setRoom:(Room *)room {
    // 1.判断传入对象与现有对象是否一致
    if (_room != room) {
        // 2.如果不一致, 则release以前的对象
        [_room release];
        // 3.retain新传入的对象
        _room = [room retain];
    }
}

- (void)setCar:(Car *)car {
    if (_car != car) {
        [_car release];
        _car = [car retain];
    }
}

- (Room *)room {
    return _room;
}

- (Car *)car {
    return _car;
}

- (void)dealloc
{
    [_room release];
    [_car release];
    NSLog(@"%s", __func__);
    [super dealloc];
}

@end
