//
//  main.m
//  OC018_Property
//
//  Created by 桂朝阳 on 16/6/27.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:24]; // 由@property生成
        [p age]; // 由@property生成
    }
    return 0;
}
