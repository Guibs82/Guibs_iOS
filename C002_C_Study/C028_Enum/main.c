//
//  main.c
//  C028_Enum
//
//  Created by 桂朝阳 on 16/6/19.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    /*
        枚举
        枚举就是专门用于表示几种固定类型的取值
        枚举的本质就是基本数据类型, 就是整型
     */
    
    /*
        enum 枚举类型名称 {
            取值
        };
     */
    
//    1.定义枚举类型
//    规范: 枚举首字母大写, 枚举的取值一般以k开头, 后面跟上枚举的名称, 跟上当前取值的含义
    enum Gender {
        kGenderMale = 9,   // 男 [默认 0, 此处为9]
        kGenderFemale  // 女 [此处为10]
    };
//    2.通过枚举类型定义枚举变量
    enum Gender sex;
    sex = kGenderMale;
    printf("%i\n", sex);
    sex = kGenderFemale;
    printf("%i\n", sex);
//    注意: 由于枚举类型的本质是整型, 所以枚举类型除了可以接收枚举的固定的取值外, 还可以接收其他整型的值
//    也就枚举类型的变量可以当做int 类型的变量使用
    
    return 0;
}
