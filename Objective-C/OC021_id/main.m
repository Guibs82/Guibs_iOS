//
//  main.m
//  OC021_id
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            id是一个数据类型, 并且是一个动态数据类型
            
            在默认情况下, 所有的数据类型都是静态数据类型
            静态数据类型特点: 在编译时就知道变量的类型, 直到变量中有哪些属性和方法
            在编译的时候, 就可以访问这些属性和方法. 且如果通过静态数据类型定义变量, 访问了不属于静态数据类型的属性和方法, 编译器就会报错
         
            动态数据类型: 在编译时, 编译器并不知道变量的真实类型, 只有在运行时, 才知道其真实类型
                如果通过动态数据类型的变量, 访问了不属于动态数据类型的属性和方法, 编译器不会报错
         
            id == NSObject *   [万能指针]
            id和NSObject * 的区别:
                NSObject * 是一个静态数据类型
                id 是一个动态数据类型
         
            通过静态数据类型定义的变量, 不能调用子类特有的方法
            通过动态数据类型定义的变量, 可以调用子类特有的方法
            通过动态数据类型定义的变量, 可以调用私有方法
         
            弊端: 可能会引发运行时错误
         
            运用场景: 多态, 可以减少代码量, 避免调用子类特有方法时, 需要强制类型转换
         */
        Person *p = [Person new];
        p.age = 30;
        [p sleep];
        
//        NSObject *obj1 = [Person new];
//        [obj1 sleep]; 报错, 因为obj1 是NSObject, 不具有sleep 方法
        
        id iObj1 = [Person new];
        [iObj1 sleep];
        [iObj1 test];
        
        id iObj2 = [Student new]; // 不报错, 因为id 是动态数据类型
        [iObj2 eat];
//        [iObj2 test];
        
        // 为了避免动态数据类型引发的运行时错误, 如果使用动态数据类型定义一个变量, 在调用该变量的方法前, 会进行一次判断. 判断当前变量是否能调用某方法
        id iObj3 = [Person new];
        if ([iObj3 isKindOfClass:[Student class]]) { // isKindOfClass 判断指定对象是否是某个类/某个类的子类
            [iObj3 eat];
        } else {
            NSLog(@"调用失败");
        }
        
        if ([iObj3 isMemberOfClass:[Student class]]) { // isMemberOfClass 判断指定对象是否是当前指定类的实例
            NSLog(@"iObj3 是Student 的实例");
        }
        
    }
    return 0;
}
