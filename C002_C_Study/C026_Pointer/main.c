//
//  main.c
//  C026_Pointer
//
//  Created by 桂朝阳 on 16/6/17.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

void changeNum(int *p);

void test();

int main(int argc, const char * argv[]) {
    
    /*
        指针
        指针就是专门用于保存地址的
        指针变量格式: 数据类型 *变量名称
        数据类型: 说明将来指针变量能够保存什么类型的变量的地址
            注意: 指针变量是什么类型, 将来就只能保存什么类型变量的地址
            例如: 指针变量是int 类型, 将来就只能保存int 类型变量的地址
        * :没有任何特殊含义, 仅仅是为了标示这是一个指针变量
        变量名称: 用于区分不同变量
     */
    
    int num; // 普通变量
    num = 10;
    
    int *numP; // 指针变量 64位下占8个字节
    numP = &num; // 将num 的地址存储到numP 中
    
//    指针变量前的* 标示访问指针变量指向的那一块存储空间
//    *numP = num
    *numP = 10;
    printf("%i\n", num);
    
    changeNum(&num);
    printf("%i\n", num);
    
    /*
        指针注意点
     */
//    1.指针只能保存地址;
//    2.同一个变量可以有多个指针指向他
//    3.指针的指向可以修改
//    4.不要访问野指针
    int *p = NULL; // 防止指针未赋值
//    5.指针类型是什么类型, 就只能指向什么类型的数据
    
    
    /*
        多级指针
     */
    char charValue = 'g';
    printf("修改前的charValue = %c\n", charValue);
    
//    1.拷贝需要指向变量的数据类型和变量名称
//    2.在数据类型和变量名称之间加个*
//    3.修改变量名称
    char *charValueP;
    charValueP = &charValue; // 保存charValue 的地址
    
    *charValueP = 'z';
    printf("修改后的charValue = %c\n", charValue);
    
//    1.拷贝需要指向变量的数据类型和变量名称
//    2.在数据类型和变量名称之间加个*
//    3.修改变量名称
    char **charValuePP = &charValueP; // 不管有几颗* 只要是指针变量就占8个字节 // 保存的charValueP 的地址
    charValuePP = &charValueP;
    
    **charValuePP = 'y'; // **charValuePP = *(*charValuePP) = *charValueP = charValue
    printf("修改后的charValue = %c\n", charValue);
    
    /*
     char c = 'a';
     char *cp;
     cp = &c;
     char **cpp;
     cpp = &cp;
     
     **cpp == *(*cpp) == *cp == c
     */
    
//    为什么指针要分类型:
//      因为当我们利用指针去取值的时候, 系统会自动根据指针类型确定应该取对少个字节中的值
    
    /*
        指针和数组
     */
    int ages[3] = {1, 3, 5};
//    数组名就是数组的地址, 数组的地址就是首元素的地址
    printf("ages's address is %p\n", ages);
    printf("ages[0]\'s address is %p\n", &ages[0]);
    
//    指针是专门用于保存地址
//    数据类型 *变量名称;
//    由于数组的首元素地址就是数组地址, 所以定一个指针指向数组, 其实就是定义一个指针指向数组的首元素, 所以数组首选苏是什么类型, 指向数组的指针就是什么类型
    int *ageP = ages;
    printf("p = %p\n", ageP);
    printf("&ages[0] = %p\n", &ages[0]);
    
//    如何利用指针操作数组
    ages[0] = 998;
    printf("修改后的 ages[0] = %i\n", ages[0]);
//    因为ageP 指针存储的值和ages 中存储的值相同, 所以以前用ages 的地方都可以使用p 来代替
    ageP[0] = 899;
    printf("修改后的 ages[0] = %i\n", ages[0]);
    
    for (int i = 0; i < 3; i++) {
        printf("ageP[%i] = %i\n", i, ages[i]);
    }
    
//    指针类型的两个用途:
//      1.取值
    printf("*p = %i\n", *ageP);
    printf("*p = %p\n", ageP);
    ageP = ageP + 1;    // 指针 + 1, 并不是真实的+1, 而是+4(字节)
    printf("*p + 1 = %i\n", *ageP);
    printf("*p + 1 = %p\n", ageP);
    ageP = ageP + 1;
    printf("*p + 1 + 1 = %i\n", *ageP);
    printf("*p + 1 + 1 = %p\n", ageP);
//      2.用于做加法运算, 指针+1, 其实是加上指针类型所占用的长度, 如果当前指针类型是int, 那么+1 的本质是加上4个字节
    ageP = ages;
    for (int i = 0; i < 3; i++) {
        printf("ageP[%i] = %i\n", i, *(ageP + i));
    }

    /*
        只要一个指针指向了数组, 那么访问数组就有3中方式
        1. ages[0]
        2. p[0]
        3. *(p+0) [本质]
     */
    
    
    /*
        指针和字符串
     */
    char str[] = "gzy";
    char str_2[] = "gzy";
    printf("%s\n", str);
//      因为数组名就是数组地址, 数组名保存的是数组第0个元素的地址, 所以可以用指针保存字符串
//      通过指针保存一个字符串, 其实就是保存的字符串第0个元素的地址
    char *str2 = "gzy";
    char *str2_2 = "gzy";
    printf("%s\n", str2);
//      注意:
//        如果用数组保存字符串, 则字符串是一个变量, 可以修改, 存储在栈中, 当作用域结束会自动释放该变量
//        如果用指针保存字符串, 则字符串是一个常量, 不可以修改, 存储在常量区, 不会被释放, 而且多个相同的值对应的地址相同
    printf("char str[] = %p\n", str);
    printf("char str_2[] = %p\n", str);
    printf("char *str2 = %p\n", str2);
    printf("char *str2_2 = %p\n", str2);
    
    
//    指针数组
    char *name_P[4] = {
        "g",
        "z",
        "y",
        "1"
    };
    
    for (int i = 0; i < 4; i++) {
        printf("names_P[%i] = %s\n", i, name_P[i]);
    }
    
    
    /*
        函数也会占用一块存储空间
        因为函数也会占用一块存储空间, 所以函数也有自己的地址
        函数的地址保存在函数名中
        函数名就是函数的地址 === 数组名就是数组的地址
     */
//    指向函数的指针的定义格式:
    void (*functionP) (); // 无返回值无参数
//    void: 将来指向的函数没有返回值
//    (): 将来指向的函数没有参数 [Ps: 如果有参数 (int, int)]
//    *: 代表一个指针
//    functionP: 代表指针的变量名, 用于区别
//    (* functionP): 代表将来指向一个函数
    
    functionP = test; // 注意: 不能写成test()
    
    (*functionP)(); // 用指针调用指向的函数
    functionP();    // test = functionP (类比数组) 方法名就是方法对应的地址
    
    return 0;
}

void changeNum(int *p) { // int *p = &p
    *p = 22;
}

void test() {
    printf("test\n");
}
