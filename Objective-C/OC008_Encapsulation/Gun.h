//
//  Gun.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/23.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gun : NSObject
{
//    @public -- 默认protected
    int _bullet; // 子弹
    // 虽然成员变量不是public后, 外界不能直接访问了, 但还是可以再本类的对象方法中直接访问
}

/*
    设计方法
 */
- (void)shoot;

- (void)addBullet:(int)bulletNumber;

// 提供一个方法, 用于返回成员变量的值
- (int)getBullet;

@end
