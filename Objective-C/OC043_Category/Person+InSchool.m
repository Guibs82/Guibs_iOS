//
//  Person+InSchool.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person+InSchool.h"

@implementation Person (InSchool)

- (void)study {
    NSLog(@"I'm studying");
}

- (void)say {
    NSLog(@"Category InSchool say My age is %i", self.age);
}

@end
