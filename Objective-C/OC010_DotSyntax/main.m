//
//  main.m
//  OC010_DotSyntax
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        
        [p setAge:24];
        p.age = 22;
        
        [p setName:@"Guibs"];
        
        NSLog(@"name is %@, age is %i\n", p.name, p.age);
        /*
            如果给属性提供了getter 和setter 方法, 那么访问属性又多了一种方法, 点语法
            点语法是编译器特性, 本质是调用了我们的setter 和getter 方法
            点语法是一个编译器特性, 会在程序翻译成二进制的时候, 将.语法自动转换为setter 和getter 方法
                如果点语法在= 左边, 系统会自动转换为setter方法
                如果点语法在= 右边, 或者没有等号, 系统会自动转换为getter方法
         */
        
        /*
            注意: 点语法一般用于给成员变量赋值, 如果不是给成员变量赋值, 一般情况下不建议使用, 但也可以使用.
         */
    }
    return 0;
}
