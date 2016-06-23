//
//  main.m
//  OC008_Encapsulation
//
//  Created by 桂朝阳 on 16/6/23.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1.创建一把枪
        Gun *g = [Gun new];
        // 2.设置抢中子弹数量
        [g addBullet:10];
        // 3.射击
        [g shoot];
        [g shoot];
        [g shoot];
        [g shoot];
        [g shoot];
        [g shoot];
        
        NSLog(@"此时此刻, 子弹还有%i发", [g getBullet]);
        
        [g shoot];
        [g shoot];
        [g shoot];
        [g shoot];
        [g shoot];
        
        [g addBullet:-10];
        [g shoot];

        [g addBullet:10];
        [g shoot];
    }
    return 0;
}
