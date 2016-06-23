//
//  Gun.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/23.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Gun.h"

@implementation Gun

- (void)shoot {
    if (_bullet > 0) {
        _bullet--;
        NSLog(@"开了一枪, 还剩%i发子弹", _bullet);
    } else {
        NSLog(@"没有子弹了亲爱的");
    }
}


/*
    封装: 屏蔽内部实现的细节, 仅仅对外提供共有的方法/接口
    好处: 保证数据的安全性 将变化隔离
    规范: 一般情况下不会对外指直接暴露成员变量, 都会提供一些共有的方法进行赋值. 成员变量都需要封装起来.
 */
- (void)addBullet:(int)bulletNumber {
    if (bulletNumber < 0) {
        bulletNumber = 0;
    } else {
        _bullet += bulletNumber;
    }
}

- (int)getBullet {
    return _bullet;
}

@end
