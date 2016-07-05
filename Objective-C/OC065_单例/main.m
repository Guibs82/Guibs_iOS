//
//  main.m
//  OC065_单例
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tools *t1 = [[Tools alloc] init];
        Tools *t2 = [Tools shareInstance];
        Tools *t3 = [t1 copy];
        Tools *t4 = [t1 mutableCopy];
        
        NSLog(@"%p", t1);
        NSLog(@"%p", t2);
        NSLog(@"%p", t3);
        NSLog(@"%p", t4);
    }
    return 0;
}
