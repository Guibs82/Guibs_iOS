//
//  Student.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(int)number {
    self = [super initWithAge:age andName:name];
    if (self) {
        _no = number;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name is %@, age is %i, no is %i", [self name], [self age], [self no]];
}

@end
