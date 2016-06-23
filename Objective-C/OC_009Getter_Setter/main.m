//
//  main.m
//  OC_009Getter_Setter
//
//  Created by 桂朝阳 on 16/6/23.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Gun *g = [Gun new];
        [g setSize:100];
        NSLog(@"Bullet is %i", [g getBullet]);
    }
    return 0;
}
