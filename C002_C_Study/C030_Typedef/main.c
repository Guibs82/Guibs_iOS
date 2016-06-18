//
//  main.c
//  C030_Typedef
//
//  Created by 桂朝阳 on 16/6/19.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

/*
    typedef 给数据类型起别名
        typedef 原有的数据类型 别名;
    注意: 
        1.typedef 不仅能给系统原有的数据类型起别名, 也可以给一个自定义的数据类型起别名
        2.使用typedef 给数据类型起别名, 不会生成新的数据类型
 */

typedef int 整数;
typedef 整数 我的整数;

struct Person {
    char *name;
};

/*
    给结构体起别名
 */
// 给结构体起别名的方式1
typedef struct Person SPerson;

// 给结构体起别名的方式2
typedef struct Person2 {
    char *name;
} SPerson2;

// 给结构体起别名的方式3
typedef struct {
    char *name;
} SPerson3;

/*
    给枚举起别名
 */
//1.先定义枚举类型再起别名
enum Gender1 {
    kGenderMale,
    kGenderFemale
};
typedef enum Gender1 SEX1;

//2.定义枚举的同时起别名
typedef enum Gender2 {
    kGenderMale2,
    kGenderFemale2
} SEX2;

//3.定义枚举的同时起别名, 且省略枚举原有类型名称
typedef enum {
    kGenderMale3,
    kGenderFemale3
} SEX3;

/*
    给指针起别名
 */
typedef char * String;
typedef int (*functionPointer)(int, int); // 如果指向函数的指针起别名, 则指向函数的指针的指针名, 就是别名 (functionPointer)

int main(int argc, const char * argv[]) {
    
    整数 a;
    a = 1;
    printf("%i\n", a);
    
    我的整数 b;
    b = 1;
    printf("%i\n", b);
    
    SPerson p1;
    p1.name = "Guibs";
    printf("%s\n", p1.name);
    
    return 0;
}
