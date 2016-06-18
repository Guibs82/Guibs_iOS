//
//  main.c
//  C027_Struct
//
//  Created by 桂朝阳 on 16/6/18.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

struct structForFunction {
    char *name;
};

void giveName(struct structForFunction sFF);


int main(int argc, const char * argv[]) {
    
    /*
        结构体
        
        基本数据类型: int, float, double, char
        构造类型: 数组 结构体
     
        人:
        姓名: char
        年龄: int
        身高: double
     
        数组: 用于保存一组相同类型的数据
        结构体: 用于保存一组不同类型的数据
     */
    
//    定义结构体变量步骤
//      1.定义结构体类型
    /*
     struct 结构体名称 {
     结构体属性
     };
     */
    struct Person {
//        char name[20];
        char *name; //8
        int age; //4
        double height; //8
    };
    
//     2.根据结构体类型, 定义结构体变量
    struct Person p;
    
//     3.赋值
//      使用结构体变量.属性 来赋值
//    注意: 数组不能先定义再进行一次性初始化, 所以p.name = "Guibs" 是错误的写法, 需要将结构体中的char name[20] 改为 char *name
//    p.name = "Guibs";
    p.name = "Guibs";
    p.age = 24;
    p.height = 185.0;
    
    
//    结构体初始化
    struct Dog {
        char *name;
        int age;
        double height;
    };
    
//    1.定义的同时初始化
    struct Dog d1 = {"d1", 13, 5.0};
    
//    2.先定义再初始化(逐个初始化)
    struct Dog d2;
    d2.name = "d2";
    d2.age = 5;
    d2.height = 10.0;
    
//    3.先定义再初始化(一次性初始化)
    struct Dog d3;
    d3 = (struct Dog){"d3", 3, 12.0}; // 明确为结构体, 就可以定义后, 一次性初始化
    
//    4.将指定的数据给指定的属性
    struct Dog d4 = {.height = 1.77, .name = "d4"};
    
    
//    从结构体获取数据
    printf("name = %s\nage = %i\nheight = %lf\n", d1.name, d1.age, d1.height);
    
//    注意: 定义结构体并不会分配内存空间, 只有在定义结构体变量的时候, 才会分配存储空间
//    结构体: 内存地址从大到小
//    属性: 内存地址从小到大
//    结构体的地址, 就是第0个元素的地址

//    结构体会首先找到所有属性中占用空间最大的那个属性, 然后按照该属性的倍数来分配存储空间
//      1.找到结构体类型中占用存储空间最大的属性, 以后就按照该属性占用的存储空间来分配(Dog 中为8个字节) [提高计算机运行速度(减少开辟存储空间次数)]
//      2.会从第0个属性开始分配存储, 如果存储空间不够就会重新开辟存储空间, 如果存储空间还有剩余且足够下一个元素, 就把后面的属性的数据存储到生育的存储空间中
//      注意: 每次开辟新存储空间时, 都将属性存入新开辟的存储空间内, 原先剩余的存库空间不使用
    
    /*
        struct Dog {
            char *name; // 8    --> 开辟8个字节
            int age; // 4   --> 再开辟8个字节
            double height; // 8 --> 上一步还剩4个字节不够, 再开辟8个字节, 存储时从上一步开辟的未填满处开始存储
        };
     */
    
    struct Dog d5;
    
    printf("The size of d5 is %lu\n", sizeof(d5));
    printf("The address of d5 is %p\n", &d5);
    printf("The address of name is %p\n", &d5.name);
    printf("The address of age is %p\n", &d5.age);
    printf("The address of height is %p\n", &d5.height);
    
    
//    结构体的定义方式:
//    1.先定义结构体类型, 再定义结构体变量
    struct BookOne {
        char *name;
        double price;
    };
    struct BookOne bookOne1;
    
//    2.定义结构体类型的同时定义结构体变量
    struct BookTwo {
        char *name;
        double price;
    } bookTwo1;
    bookTwo1.name = "Guibs's C";
    printf("BookTwo1's name is %s\n", bookTwo1.name);
    
    struct BookTwo bookTwo2;
    bookTwo2.name = "Guibs's C 2";
    printf("BookTwo2's name is %s\n", bookTwo2.name);
    
//    3.定义结构体类型的同时定义结构体变量, 且省略结构体类型名称
//      如果在定义结构体类型的同时, 定义结构体变量, 可以省略结构体类型名称
//    弊端: 由于没有结构体类型名称, 所以以后不能使用该结构体
    struct {
        char *name;
        double price;
    } bookThreeOnce;
    bookThreeOnce.name = "Guibs's C 3";
    printf("BookThreeOnce's name is %s\n", bookThreeOnce.name);
    
//    结构体的作用域:
//    1.如果结构体定义在函数或者代码块中, 那么结构体类型的作用域和变量的作用域一样, 从定义的那一行开始, 一直到函数结束或者代码块结束
//    2.不同的作用域中可以有同名的结构体类型, 在使用时使用就近原则
    
    
    /*
        结构体与指针
     */
    struct structForPointer {
        int age;
        char *name;
    };
    
    struct structForPointer sFP;
    
//    定义一个指向结构体的指针
    struct structForPointer *pFSFP;
    pFSFP = &sFP;
    
//    设置属性方式1
    (*pFSFP).name = "Point for Struct"; // 因为. 的优先级 > * ,因此使用括号
    (*pFSFP).age = 18;
    
    printf("name is %s, age is %i\n", (*pFSFP).name, (*pFSFP).age);
    
//    设置属性方式2
    pFSFP -> age = 99;
    pFSFP -> name = "Pointer for Struct (new)";
    printf("name is %s, age is %i\n", pFSFP -> name, pFSFP -> age);
    
    /*
        结构体数组
     */
    
    struct Department {
        char *name;
        int count;
    };
    
    struct Department ios = {"iOS", 15};
    struct Department android = {"Android", 15};
    struct Department php = {"PHP", 15};
    
//    结构体数组
    struct Department department[3] = {ios, android, php};
    
//    取数据
    printf("The department is %s, the count of this department is %i\n", department[0].name, department[0].count);
    
//    结构体嵌套
    struct Date {
        int year;
        int month;
        int day;
    };
    
    struct PersonIncludeStruct {
        char *name;
        int age;
//        出生日期
        struct Date birth;
//        入学时间
        struct Date ruxue;
//        毕业时间
        struct Date biye;
    };
    
    struct PersonIncludeStruct pIS = {
        "Guibs",
        24,
        {
            1234,
            12,
            1
        },
        {
            1234,
            12,
            1
        },
        {
            1234,
            12,
            1
        }
    };
    printf("birthday is %i-%i-%i\n", pIS.birth.year, pIS.birth.month, pIS.birth.day);

//    结构体和函数
    
    struct structForFunction sFF;
    sFF.name = "SFF Name";
    printf("structForFunction's name is %s\n", sFF.name); // SFF Name
    giveName(sFF);
    printf("After giveName, the structForFunction's name is %s\n", sFF.name); // SFF Name

    return 0;
}

// 1.结构体的属性 传递给函数, 在函数中修改形参不会影响到实参
// 2.将结构体名称 作为参数传递, 在函数中修改形参不会影响到实参
//    结构体之间赋值是值传递, 系统会将A结构体的值 拷贝一份到B结构体中
// 若要一并修改, 可使用指针
void giveName(struct structForFunction sFF) {
    sFF.name = "givenName";
}
