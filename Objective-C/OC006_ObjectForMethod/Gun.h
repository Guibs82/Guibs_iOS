//
//  Gun.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clip.h"

// Gun 🔫
// #pragma mark - 分割线
// #pragma mark 🔫 方法注释
#pragma mark - 🔫 -
@interface Gun : NSObject
{
@public
    //    int _bullet;
    Clip *clip;
}

// 射击
// 注意: 企业级开发, 千万不要随意修改一个方法
- (void)shoot: (Clip *)clip;

@end
