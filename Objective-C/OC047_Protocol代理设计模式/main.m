//
//  main.m
//  OC047_Protocol代理设计模式
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Nanny.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建婴儿
        Baby *b = [[Baby alloc] init];
//        // 创建保姆
//        Nanny *n = [[Nanny alloc] init];
//        // 将保姆赋值给婴儿
//        b.nanny = n;
        
        // 用大学生当保姆
        Student *s = [[Student alloc] init];
        b.nanny = s; // 因为婴儿的保姆是id类型
        
        
        
        [b needEat];
        [b needSleep];
    }
    return 0;
}
