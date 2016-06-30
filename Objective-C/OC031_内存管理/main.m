//
//  main.m
//  OC031_内存管理
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         每个OC对象都有自己的引用计数器
         它是一个整数(4字节)
         retain 计数器+1
         release 计数器-1
         引用计数器为0时, 对象自动释放
         retainCount: 获取当前对象的引用计数器数
         
         注意:
         1.retainCount获取的引用计数器数可能不准确
         2.release并不代表销毁/回收对象, 仅仅是计数器-1
         */
        
        /*
            当一个对象引用计数器为0时, 这个对象即将被销毁, 其占用的内存会被释放
            对象在即将销毁时, 系统会自动给对象发送一条dealloc消息 (因此, 从dealloc是否被调用, 可以判断对象是否被销毁)
         
            一般重写dealloc, 就是对象的遗言, 进行扫尾操作
            在dealloc被重写时, 必须调用[super dealloc], 并且放在最后面调用
         
            注意: 1.不能直接调用dealloc 2.一旦对象被回收, 它占用的内存就不再可用, 坚持使用会导致程序崩溃(野指针)
         */
        
        // 只要创建一个对象, 对象的默认引用计数器就是1
        Person *p = [[Person alloc] init];
        NSLog(@"p retainCount is %lu", [p retainCount]); // 1
        
        [p retain];
        NSLog(@"p retainCount is %lu", [p retainCount]); // 2
        
        // 通过指针变量p, 给p指向的对象发送一条release消息
        // 只要对象接收到release消息, 引用计数器就-1
        [p release]; // 需要将项目的ARC设置为NO(Build Setting中)
        NSLog(@"p retainCount is %lu", [p retainCount]); // 1
        
        [p release]; // retainCount = 0
        NSLog(@"p retainCount is %lu", [p retainCount]); // 1

        
        /*
            ARC: Automatic(自动) Reference(引用) Counting(计数)  [编译器特性]
            什么是自动引用计数: 不需要程序员管理内存, 编译器会在适当的位置自动为我们加上release/retain等代码
            注意: OC中的ARC与JAVA中的垃圾回收不同, OC中的ARC是编译器特性, JAVA中的垃圾回收是系统自动回收
         
            MRC: Manul(手动) Reference(引用) Counting(计数)
            什么是手动引用计数: 所有的对象都需要程序员手动管理, 需要自己写release/retain
         
            内存管理的原则就是有加就有减
            一次alloc 对应一次release
            一次retain 对应一次release
         */
    }
    return 0;
}
