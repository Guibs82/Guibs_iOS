//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/4.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)say {
    NSLog(@"加油!");
}

- (void)sayWithName:(NSString *)name {
    NSLog(@"加油, %@", name);
}

@end
