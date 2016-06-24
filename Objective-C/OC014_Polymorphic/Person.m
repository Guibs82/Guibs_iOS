//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)feed:(Animal *)animal {
    NSLog(@"喂食开始 --- ");
    [animal eat];
    NSLog(@"喂食结束 ---");
}

@end
