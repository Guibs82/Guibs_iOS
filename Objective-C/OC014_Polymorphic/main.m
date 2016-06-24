//
//  main.m
//  OC014_Polymorphic
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
#import "Person.h"


// 多态: 父类的指针指向子类的对象

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog new];
        [d eat];
        
        Cat *c = [Cat new];
        [c eat];
        
        // 多态: 事物的多种表现形态
        // 动态类型: 在编译时, 编译器只会检查当前类型中有没有需要调用的方法
        //          在运行时, 系统会自动判断a1的真是类型
        //  在多态中, 如果想调用子类特有的方法, 必须强制类型转换为子类才能调用
        Animal *a1 = [Dog new]; // a1 -- Animal -- eat使用Dog的
        [a1 eat];
//        [a1 kanjia]; --> 报错, 因为a1 是Animal 不是Dog
        [(Dog *)a1 kanjia];
        
        Animal *a2 = [Cat new]; // a2 -- Animal -- eat使用Cat的
        [a2 eat];
        
        Person *p = [Person new];
        [p feed:d];
        [p feed:c];
    
    }
    return 0;
}
