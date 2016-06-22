//
//  Shop.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Shop.h"

@implementation Shop

-(Gun *)buyGun:(int)money {
    Gun *gun = [Gun new];
    return gun;
}

-(Clip *)buyClip:(int)money {
    Clip *clip = [Clip new];
    [clip addBullet];
    return clip;
}

@end
