//
//  Gun.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Gun.h"


@implementation Gun

-(void)shoot:(Clip *)clip {
    if (clip != nil && clip ->_bullet != 0) {
        clip -> _bullet -= 1;
        NSLog(@"打了一枪, 还有%i发子弹", clip -> _bullet);
    } else {
        NSLog(@"弹夹空了, 换弹夹中");
        [clip addBullet];
        NSLog(@"弹夹更换完毕");
    }
}

@end
