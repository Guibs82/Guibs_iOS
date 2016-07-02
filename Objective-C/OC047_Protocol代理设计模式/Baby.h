//
//  Baby.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NannyProtocol.h"

@class Nanny;

@interface Baby : NSObject

@property(nonatomic, assign) int hungryLevel; // 饥饿程度
@property(nonatomic, assign) int sleepyLevel; // 困意程度

//@property(nonatomic, strong) Nanny *nanny; // 婴儿的保姆
// 婴儿的保姆
@property(nonatomic, strong) id<NannyProtocol> nanny; // 使用id接收, 可以接收非Nanny类的对象当保姆

- (void)needEat;
- (void)needSleep;

@end
