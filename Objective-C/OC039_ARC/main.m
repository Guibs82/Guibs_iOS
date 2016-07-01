//
//  main.m
//  OC039_ARC
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            ARC判断原则: 只要还有一个强指针变量指向对象, 对象就会保存在内存中
            强指针: 默认情况下, 所有指针都是强指针
         
            So 把所有的point = nil 就会释放对象
         */
        Person *p = [[Person alloc] init];
        
        NSLog(@"---");
        
        p = nil; // 此时Person对象没有一个指向自己的强指针了, 所以ARC将其释放了
        
        NSLog(@"p被释放了");
        
        // 明确的强指针
        __strong Person *sp = [[Person alloc] init];
        
        // 弱指针
        __weak Person *wp = [[Person alloc] init];
        
        // 在开发中, 一定不要用弱指针保存一个刚刚创建的对象, 因为对象会被立即释放(因为没有强指针指向)
        
        sp = nil;
        
        
    }
    return 0;
}
