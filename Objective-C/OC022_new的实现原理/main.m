//
//  main.m
//  OC022_new的实现原理
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            new 做了三件事:
            1.开辟存储空间 + alloc
            2.初始化所有属性(成员变量) - init
            3.返回对象的地址
         */
//        Person *p = [Person new];
        Person *p1 = [Person alloc]; // + alloc 1.开辟存储空间(堆中) 2.将所有属性初始化为0 3.返回当前实例对象的地址
        Person *p2 = [p1 init]; // 1.初始化成员变量, 默认情况下, init什么都没有做 2.返回初始化后实例对象的地址
//        注意: alloc 返回的地址, 和init 返回的是同一个
        NSLog(@"\np1's address is %p, \np2's address is %p", p1, p2);
        
        Person *p3 = [[Person alloc] init]; // 建议都使用alloc init, 不用new
    }
    return 0;
}
