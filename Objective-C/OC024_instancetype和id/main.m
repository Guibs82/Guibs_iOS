//
//  main.m
//  OC024_instancetype和id
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p setAge:10];
        
        // 如果init的返回值是instancetype, 那么将返回值赋值给其他对象, 会报警告
        // 在以前, init的返回值是id类型, 不会报警告
        NSString *str = [[Person alloc] init];
        NSUInteger length = [str length];
        NSLog(@"length is %lu", length);
    }
    return 0;
}
