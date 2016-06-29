//
//  main.m
//  OC028_类的本质
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


void demo(Class c);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            类的本质:
            类其实也是一个对象, 这个对象会在类第一次被使用时创建
            只要有了类对象, 就可以通过类对象创建实例对象
            实例对象中有一个isa指针, 指向创建自己的类对象
         
            类对象中保存了当前对象所有的对象方法
            当给一个实例对象发消息时, 会根据实例对象中的isa指针, 去对应的类对象中查找. 没有就到其父类中找
         
            实例对象 isa--> 类对象(对象方法列表) isa--> 元类对象(存储类方法列表) isa--> 根元类对象(new) isa--> 自己
            
            所有类对象的继承关系就是元类对象的继承关系
         */
        Person *p1 = [[Person alloc] init];
        Person *p2 = [[Person alloc] init];
        
        // 1.如何获取类对象
//        一个类在内存中只有一个类对象
        Class c1 = [p1 class];
        Class c2 = [p2 class];
        Class c3 = [Person class];
        
        NSLog(@"p1 address: %p, c1 address %p", p1, c1);
        NSLog(@"p2 address: %p, c2 address %p", p2, c2);
        NSLog(@"c2 address %p", c3);
        
        // 2.类对象的应用场景
        // 2.1用于创建实例对象
        Person *pc1 = [[c1 alloc] init];
        pc1.age = 24;
        NSLog(@"age is %i", pc1.age);
        // 2.2用于调用类方法
        [c1 test];
        
        
        demo(c1);
    }
    return 0;
}


void demo(Class c) {
    id obj = [[c alloc] init];
    NSLog(@"%@", obj);
}
