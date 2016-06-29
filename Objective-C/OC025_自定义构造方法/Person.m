//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.age = 24;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %i, name is %@", _age, _name];
}

- (instancetype)initWithAge:(int)age {
    self = [super init];
    if (self) {
        _age = age;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (instancetype)initWithAge:(int)age andName:(NSString *)name {
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
    }
    return self;
}

@end
