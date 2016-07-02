//
//  main.m
//  OC046_Protocol
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p playFootball];
        [p playBasketball];
        [p playBaseball];
        
        Student *s = [Student new]; // 若student未遵循sport协议, 就会警告
    }
    return 0;
}
