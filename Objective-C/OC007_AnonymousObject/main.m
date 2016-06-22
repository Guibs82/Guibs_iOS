//
//  main.m
//  OC007_AnonymousObject
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 匿名对象就是没有名字的对象
        
        // 1.有名字的对象
        // 只要用一个指针保存了某个对象的地址, 我们就可以称这个指针为某个对象
        // p 为Person对象
        Person *p = [Person new];
        p -> _name = @"Guibs";
        p -> _age = 24;
        
        [p sayNameAndAge]; // name is Guibs, age is 24
        
        // 2.没有名字的对象
        // 无论有没有名字, 只要调用new方法, 都会返回对象的地址
        [Person new] -> _name = @"Guibs";
        [Person new] -> _age = 24;
        
        [[Person new] sayNameAndAge]; // name is (null), age is 0
        
        // 3.匿名对象的应用场景
        // 3.1当对象只需要使用一次的时候
        // 3.2匿名对象可以作为方法的参数(实参)
    }
    return 0;
}
