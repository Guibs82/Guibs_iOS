//
//  main.m
//  OC038_Autorelease
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool { // 创建一个自动释放池
        
        /*
        Person *p = [[Person alloc] init];
        
        [p run];
        
        // 时刻关注对象何时被释放
        [p release];
        p = nil;
        
        [p run];
         */
        
        Person *p = [[Person alloc] init];
        // autorelease 不需要关心对象何时被释放, 只要能够访问p的地方, 都可以使用p
        p = [p autorelease]; // 只要调用了autorelease, 后面就不需要调用release [将对象放入自动释放池]
        // 调用autorelease会返回对象本身, 且不会改变retainCount
        // 当autoreleasepool被释放时, 该pool中所有的对象都会被调用release
        
        /*
            注意:
            1.一定要在autoreleasepool中给对象调用autorelease
            2.在自动释放池中, 创建的对象, 一定要调用autorelease, 才会将对象放入自动释放池中
            3.只要在自动释放池中调用autorelease, 就会将对象放入自动释放池中
         
            4.在自动释放池中, 不适放内存占用较大的对象. 因为自动释放池是延迟释放机制[只有pool销毁时, 才会发送release]
            5.尽量不要在自动释放池中使用循环, 若要在autoreleasepool中使用循环创建一系列对象, 则在循环中嵌套一个autoreleasepool, 解决内存问题
            6.一个程序中可以创建多个自动释放池, 并且自动释放池可以嵌套. 如果存在多个自动释放池, 自动释放池就是以"栈"的形式存储 [栈的特点: 先进后出]
                给一个对象发送autorelease消息, 会自动将对象放入栈顶的自动释放池中
            7.不能对一个对象重复调用autorelease([[obj autorelease] autorelease]), 否则会出现过度释放问题
         */
        @autoreleasepool {
            @autoreleasepool {
                Person *p = [[[Person alloc] init] autorelease];
            }
            
            Person *p = [[[Person alloc] init] autorelease];
        }
        
        Person *p2 = [[[Person alloc] init] autorelease];
        
        
        [p run];
        [p run];
    } // 自动释放池销毁, 会给自动释放池中所有的对象发送一条release
    
    
    // 创建自动释放池
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    [pool release]; // 销毁创建的自动释放池
    
    return 0;
}
