//
//  main.m
//  OC066_宏定义抽取单例
//
//  Created by 桂朝阳 on 16/7/6.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tools *t1 = [Tools shareTools];
        Tools *t2 = [Tools shareTools];
        
        NSLog(@"%p",&t1);
        NSLog(@"%p",&t2);
    }
    return 0;
}
