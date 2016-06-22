//
//  Soldier.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

// Soldier 士兵
#pragma mark - 👮 -
@interface Soldier : NSObject
{
@public
    NSString *_name;
    double _height;
    double _weight;
}

-(void)fire:(Gun *)gun withClip: (Clip *)clip;
-(void)call;

@end
