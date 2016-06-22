//
//  Shop.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

#pragma mark - 商店 -
@interface Shop : NSObject

// 买枪
-(Gun *)buyGun: (int)money;

// 买弹夹
-(Clip *)buyClip: (int)money;

@end
