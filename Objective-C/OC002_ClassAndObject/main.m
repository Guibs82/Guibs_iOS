//
//  main.m
//  OC002_ClassAndObject
//
//  Created by 桂朝阳 on 16/6/21.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    人(Person):
        属性: age height weight
        方法: eat sleep walk
 */

//@interface Person : NSObject
//
//
//{
//    // 属性
//    // 写在类的声明的大括号中间的变量, 我们称之为成员变量
//    // 成员变量只能通过对象来访问
//    // 注意: 成员变量不能离开类, 离开类之后就不是成员变量, 成员变量不能在定义的同时初始化
//    @public
//    int _age;
//    float _height;
//    float _weight;
//}
//
//// 行为
//- (void)eat:(char *)food;
//- (void)sleep;
//- (void)walk;
//
//+ (void)Demo;
//
//@end


@implementation Person : NSObject // : NSObject 后, 可以不需声明, 不过不建议这样

- (void)eat:(char *)food {
    NSLog(@"吃%s", food);
}

- (void)sleep {
    NSLog(@"Sleeping");
}

- (void)walk {
    NSLog(@"Walking");
}

+ (void)Demo {
    NSLog(@"Demo");
}

@end

// 函数声明
extern void functionSum();
static void functionMinus();

// 函数实现
// 外部函数
extern void functionSum() {
    printf("Sum 函数\n");
}

// 内部函数
static void functionMinus() {
    printf("Minus 函数\n");
}


/*
    函数和方法的区别:
        1.函数属于整个文件, 方法属于某一个类. 方法离开类就不行 (函数写在方法的实现中也行)
        2.函数可以直接调用, 方法必须由类或对象来调用
            注意: 虽然函数属于整个文件, 但如果把函数写在类的声明中会不识别
        3.不能把函数当方法来调用, 也不能把方法当函数来调用
 
 
    特性:
        1.方法可以没有声明, 只有实现
        2.方法可以只有声明, 没有实现, 编译不会报错, 但是运行会报错, 
            如果方法只有声明, 没有实现, 运行时会报错: +/-[method name]unrecognized selector sent to class      发送了一个不能识别的消息, 在类中没有[method name]方法
 +          如果方法只有实现, 没有声明, 运行时会报错: +/-[method name]unrecognized selector sent to instance      发送了一个不能识别的消息, 在类中没有[method name]方法
    
    类可以只有实现, 没有声明

 */


/*
    成员变量: 存储在堆区(当前对象对应的堆的存储空间中), 不会自动释放, 需要手动释放. [ARC 机制可以让其自动释放]
    全局变量: 存储在静态区, 程序一启动就会分配存储空间, 直到程序结束时释放
    局部变量: 存储在栈中, 自动释放
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        1.通过类创建对象
        /*
            1.开辟存储空间, 通过new创建对象, 会在堆中开辟存储空间
            2.初始化所有属性
            3.返回指针地址
         
            创建对象的时候, 返回的地址其实就是类的第0个属性的地址
            注意: 类的第0个属性是isa, isa是一个指针, 占8个字节, 指向类对象
            其实类也是一个对象, 平时我们所说的创建对象, 其实是通过一个类对象来创建一个新的对象, 类对象是系统自动帮我们创建的, 保存了当前类对象的所有方法.而实例对象是coder通过new手动创建的, 实例对象中有一个isa属性, 指向创建它的那个类对象
         */
        Person *p = [Person new]; // p 在栈中, 保存对象的地址
        p -> _age = 24;
        p -> _height = 185.0;
        p -> _weight = 120.0;

        NSLog(@"The person's age is %i, height is %f, weight is %f", p -> _age, p -> _height, p -> _weight);
        
        [p walk];
        
        [Person Demo];
        
        
        functionSum();
        
        functionMinus();
        
    }
    return 0;
}
