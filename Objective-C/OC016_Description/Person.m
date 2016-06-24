//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age {
    self -> _age = age;
}

- (void)setName:(NSString *)name {
    self -> _name = name;
}

-(int)age {
    return self -> _age;
}

-(NSString *)name {
    return self -> _name;
}

@end
