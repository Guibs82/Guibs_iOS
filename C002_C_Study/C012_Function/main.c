//
//  main.c
//  C012_Function
//
//  Created by 桂朝阳 on 16/6/11.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

/*
    函数
 
    1.C语言程序由函数组成, 要调用的函数, 必须在调用之前出现
    2.什么是函数: 函数就是一段具备特定功能的程序段
    3.不使用函数的弊端:
        1)重复代码太多
        2)当需求变更, 很多地方都需要修改代码
    4.使用函数的好处:
        1)提高了代码的复用性, 代码更简介
        2)当需求变更, 不需要修改很多地方
    5.定义格式:
        返回值类型   函数名称(形参列表) {
            函数体; // 语句...
            return xxx; // 非void 类型函数
        }
    6.return 的作用:
        1.用于在函数中返回结果给函数调用者
        2.结束函数
        3.提前结束函数 return;
    7.注意:
        1.形参列表中的变量, 只有在函数被调用时才会分配存储空间
        2.在函数中修改形参的值, 一般不会影响到外面实参的值
        3.实参的个数, 必须和形参的个数相同
        4.返回值可以和返回值类型不一样, 但如果返回值和返回值类型不一样的时候, 系统会对返回值进行自动类型转换(隐式转换), 将返回值转换为返回值类型.[例如函数类型为int, return 1.7 则结果为1]
        5.函数可以没有形参
        6.函数可以没有返回值, 如果没有返回值, 则返回值类型为void, return 可以省略
        7.函数名不能相同(即使形参列表或返回值类型不同, 函数也不可以同名)
        8.函数不能嵌套定义
        9.C语言是弱语言
         9-1.函数可以没有返回值类型, 如果没有, 默认int
 */

// 函数的声明: 在调用函数之前, 告诉系统有这个函数, 并且告诉系统, 这个函数的名字、接受的参数、返回值的类型. 若函数返回值类型为int, 则可以不进行声明.(函数的声明可以重复声明, 不过函数的实现不可以重复实现)
void sayHiToSomeone(char name[]);

void diGui();

// 函数的声明的其他写法
//void sayHiToSomeone(char[]);

/*
    main 是函数的名称, 是系统规定的名称, 系统启动程序就会调用名称叫main 的函数
    main 函数只能由系统调用, 不能手动调用
    系统启动的时候, 会给程序传递一些参数:
    argc: 系统传进来的参数个数(默认是1)
    argv: 系统传进来的参数实际的值(默认是程序的名称)
 */
int main(int argc, const char * argv[]) {
    
    // 函数的声明, 只需要在函数被调用之前告知系统就可以, 可以写在main 函数的外面或里面
    //void sayHiToSomeone(char[]);
    
    sayHiToSomeone("Guibs"); // "Guibs"调用参数时, 传入的参数称为实参
    printf("%i\n", argc); // 1
    printf("%s\n", argv[0]); // /Users/guizhaoyang/Library/Developer/Xcode/DerivedData/C002_C_Study-gkjwznorqsruatellhrmjssahjfa/Build/Products/Debug/C012_Function
    
    /*
        递归: 函数自己调用自己
     */
    diGui();
    
    return 0;
    /*
     main 中
     return: 结束函数
     0: 代表程序正常结束, 如果返回其他值代表程序非正常结束
     */
}

// 函数的实现
// C 语言中, 不可以重复实现同名函数
void sayHiToSomeone(char name[]) { // char name[] 称为形参
    printf("Hi %s\n", name);
}

// diGui 实现
void diGui() {
    int i;
    printf("请输入一个数字:");
    scanf("%i", &i);
    if (i < 5) {
        printf("%i\n", i);
    } else {
        // 递归调用
        diGui();
    }
}
