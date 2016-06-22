//
//  Soldier.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Soldier.h"

@implementation Soldier

-(void)fire:(Gun *)gun withClip:(Clip *)clip {
    if (gun != nil && clip != nil) {
        [gun shoot:clip];
    } else {
        NSLog(@"有枪么你就射");
    }
}

-(void)call {
    NSLog(@"打了个电话");
}

@end

