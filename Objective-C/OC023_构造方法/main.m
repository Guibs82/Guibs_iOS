//
//  main.m
//  OC023_构造方法
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            在OC中, init开头的我们称之为构造方法
            构造方法的用途:
                用于初始化对象, 让某个对象一创造出来就拥有某些属性和值
         */
        
        Person *p = [[Person alloc] init];
//        p.age = 24;
        NSLog(@"The age is %i", p.age);
    }
    return 0;
}
