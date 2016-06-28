//
//  main.m
//  OC017_Private
//
//  Created by 桂朝阳 on 16/6/27.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        
        // 无论使用什么成员变量修饰符修饰成员变量, 在其他类导入后都可以看到这个成员变量
        // 只不过有的成员变量不能操作
//        p -> _name;
        p -> _age;
        p -> _weight;
//        p -> _height;
        
//        p ->_hobby; // 无法看到在implementation 中声明的hobby
        
//        [p sayHobby]; // sayHobby是私有方法, 无法通过该方式直接访问
    }
    return 0;
}
