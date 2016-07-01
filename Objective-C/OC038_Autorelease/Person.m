//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run {
    NSLog(@"RUN");
}

- (instancetype)person {
    return [[[Person alloc] init] autorelease];
}

- (instancetype)initWithAge:(int)age {
    if (self = [super init]) {
        _age = age;
    }
    return self;
}

+ (instancetype)personWithAge:(int)age {
    return [[[self alloc] initWithAge:age] autorelease];
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
    [super dealloc];
}

@end
