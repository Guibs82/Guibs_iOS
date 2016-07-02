//
//  main.m
//  OC045_Block
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

// 此时, Block的变量名, 就是起的Block的别名
typedef int(^calculteBlock)(int, int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            Block是iOS中一种特殊的数据类型
         
            返回值类型 (^block变量名) (形参列表) = ^(形参列表){};
         */
        
        // 定义一个block变量
        // block和函数一样, 可以没有返回值, 也可以没有参数
        
        // 1.没返回值, 没参数
        void (^blockName1) ();
        // void: 没有返回值
        // (): 没有形参
        // (^blockName1)代表blockName1是一个block变量, 可以保存一段block代码
        
        // blockName1 = ^(){}; // 如果没有参数, ()可以省略
        blockName1 = ^(){
            NSLog(@"Block 代码段");
        };
        
        // 要想执行block保存的代码, 必须调用block
        blockName1();
        
        // 带参数的block
        void (^blockName2) (int);
        blockName2 = ^(int num) {
            NSLog(@"num is %i", num);
        };
        
        blockName2(10);
        
        
        // 加法计算器
//        int (^sumBlock) (int, int);
        calculteBlock sumBlock = ^int (int num1, int num2){ // 返回值类型(^后的int)可以省略
            return num1 + num2;
        };
        
        NSLog(@"1 + 2 = %i", sumBlock(1, 2));
        
        // 打印n次Love
        void (^printLove) (int);
        printLove = ^(int times) {
            for (int i = 0; i < times; i++) {
                NSLog(@"Love");
            }
        };
        
        printLove(10);
        
        // 注意: 1.Block可以访问外部的变量
        int a = 10;
        void (^block1)() = ^{
            NSLog(@"a is %i", a);
        };
        block1();
        
        // 注意: 2.Block可以在内部定义与外部同名变量, 在使用时, 就近原则
        int a1 = 10;
        void (^block2)() = ^{
            int a1 = 12;
            NSLog(@"a1 is %i", a1);
        };
        block2();
        
        // 注意: 3.默认情况下, 不可以在Block中修改外部变量的值
            //      Block在访问外部变量时, 会拷贝一份到堆内存
        int a3 = 10;
        void (^block3)() = ^{
//            a3 = 1; // 报错
            NSLog(@"a3 is %i", a3);
        };
        a3 = 100;
        block3(); // a3 is 10; // 因为Block使用的外部变量是拷贝的, 所以在调用前, 修改外界变量的值, 不会影响到Block拷贝的值
        
        // 如果想在Block中修改外界变量的值, 必须在外界变量定义时, 加修饰符__block
        __block int a4 = 10;
        void (^block4)() = ^{
            a4 = 1;
            NSLog(@"a4 is %i", a4);
        };
        block4();
        
        // block默认是存储在栈中, 如果对其进行copy操作, block会移到堆中
        // 如果block在栈中, block访问外界对象, 不会对对象retain
        // 如果block在堆中, block访问外界对象, 会对外界对象进行一次retain
        
        // 如果在block内访问了外界对象, 一定要给对象加上__block, 只要加上了__block, 就算在堆中, 也不会对对象进行retain

    }
    return 0;
}
