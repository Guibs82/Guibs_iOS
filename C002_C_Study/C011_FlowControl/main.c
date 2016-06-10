//
//  main.c
//  C011_FlowControl
//
//  Created by 桂朝阳 on 16/6/10.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

/*
    流程控制
    C语言提供了3种流程结构: 顺序、选择、循环
 */

int main(int argc, const char * argv[]) {
    
/*
    1.顺序结构
        从上至下
 */
    
    
/*
    2.选择结构
        对给定的条件进行判断, 再根据判断结果来决定执行哪一段代码
 */
    
//    if
/*
    第一种格式:
        只要条件表达式为真, 就会执行if 后面大括号中的内容
    if (条件表达式) {
 
    }
 */
    if (1 != 2) {
        printf("if条件成立, 我才会执行\n");
    }
    
/*
    第二种格式:
        只要条件表达式为真, 就会执行if 后面大括号中的内容. 否则, 执行else 后面大括号中的内容
    if (条件表达式) {
 
    } else {
    
    }
 */
    if (1 == 2) {
        printf("if条件成立, 我才会执行\n");
    } else {
        printf("if条件不成立, 我才会执行\n");
    }
    
/*
    第三种格式:
        只要条件表达式1为真, 就会执行第一个if 后面大括号中的内容, 后面的内容不再执行. 否则, 判断下一个条件表达式, 若所有的条件表达式都不为真, 则执行else 后面大括号中的内容
        众多大括号只会执行其中一个, 若执行到后面的大括号中的内容, 则说明该大括号前的所有条件都不成立
    if (条件表达式1) {
    
    } else if (条件表达式2) {
    
    } else if (条件表达式3) {
 
    } else {
 
    }
*/
    if (1 == 2) {
        printf("条件表达式1成立, 我才会执行\n");
    } else if (1 < 2) {
        printf("条件表达式2成立, 我才会执行\n");
    } else {
        printf("所有条件表达式都不成立, 我才会执行");
    }
    
/*
    第四种格式:
        如果省略if 后的大括号, 则条件表达式的结果, 只会影响if 后的第一条语句
    if (条件表达式)
        条件成立的语句;
 */
    if (1 > 2)
        printf("我被if控制\n");
    printf("我不被if控制\n");
    
/*
    第五种格式:
        if 嵌套
    if (条件表达式1) {
        if (条件表达式2) {
        
        }
    } else {
        if (条件表达式3) {
 
        }
    }
 */
    if (1 < 2) {
        if (2 < 3) {
            printf("if嵌套if\n");
        }
    } else {
        if (1 == 1) {
            printf("else嵌套if\n");
        }
    }
    
/*
    若要判断某个变量是否等于某个常量, 将常量前置可以在== 写成= 时, 报错而非警告 例如: if(10 == age)
 
    ; 表示空语句
 
    如果要在if 后定义变量, 必须要写大括号, 否则会报错.(同时为了明示定义的局部变量的作用域)
 
    如果 if else 省略大括号, 则else 会匹配上方与其最近的if
        if(0)
            if(1)
                语句
            else
                语句[不会执行, 因为匹配if(1)]
        else
            语句[会执行, 因为匹配if(0)]
 
    快捷键:
        上移动: Command + option + [
        上移动: Command + option + ]
        左移动: Command + [
        右移动: Command + ]
 */
    
//    switch
/*
    格式:
    取出条件表达式的返回值(必须是整型), 与case比较. 执行匹配成功的case后对应的语句. 若都不匹配, 则执行default(默认)对应的语句
    遇到break, 跳出switch, 若未遇到, 则从上至下, 顺序执行
    switch (条件表达式) { // 条件表达式必须是一个整数结果, char 类型可以转换为int, 所以 'A' 也可以[因为char 的本质是ASCII码]
        case 整数/返回值是整数的表达式: // case 可以有一个或多个, 但不能重复, 且不能是变量[因为系统在编译时, 会对switch 后面所有的case 进行优化, 会根据case 后面的常量值, 生成一张取值表]
            语句;
            break;
        case 整数/返回值是整数的表达式: // case 可以有一个或多个, 但不能重复
            语句;
            break;
        default: // default 可选, 且位置可以随意放, 即使写到case 的前面, 也只能在case 都不满足的情况下执行, 不过此时break 一定不可以省略
            语句;
            break;
    }
 
    swith 结束方法: 1.执行到break 2.执行到switch 对应的}
 */
    switch (0) {
        case 0: // 如果switch 中一个case 满足了, 其他的case 和default 都会失效
            printf("0\n");
//            break; // 注释掉break 后, 程序会继续向下执行, 输出1, 并从case 1中的break 跳出switch
        case 1:
            printf("1\n");
            break;
        default:
            printf("不是0或1\n");
            break;
    }
    
    
    
/*
    3.循环结构
        在给定条件成立的情况下, 反复执行某一段代码
 */
    
/*
    goto 语句和if 语句构成循环
    难以控制, 会破坏程序结构, 已淘汰, 不推荐
 */
    

//    while 循环
/*
    应用场景:
        需要反复执行某一段代码
    格式:
    while (条件表达式) {
        循环体
    }
    while 是对条件表达式进行判断, 条件满足就执行while 后面大括号内的语句(循环体). 还行完毕后再次判断条件, 若满足则继续执行, 若不满足则结束while 循环
    Ps:
        1.while(1) --> 恒成立
        2.while 也可以同if 一样省略大括号, 规则同if
 */
    int count = 1;
    while (count < 10) {
        printf("条件成立我就执行\n");
        int outNum = arc4random_uniform(20); // 获取一个0 ~ (20-1)的随机数[整数] [需要#include <stdlib.h>]
        if (outNum == 10) {
            printf("随机数是: %i\n", outNum);
            system("say Hi, Guibs, 我跳出while了"); // 系统播放声音: "Hi, Guibs, 我跳出while了" [system() 需要#include <stdlib.h>]
            break; // break 可以跳出while, 若多层循环, 则break 只能跳出当前所在的那一层循环
            // break 后写的语句无意义, 不会执行
        } else if (outNum == 9) {
            printf("随机数是: %i\n", outNum);
            system("say Hi, Guibs, 我跳入下一次循环了");
            continue; // continue 直接跳入下一次循环, 若多层循环, 则continue 只能跳入当前所在的那一层循环的下一次循环
            // 本次循环待执行的语句在continue 后都不会在本次循环内被执行 (所以计数器应该放在continue 之前)
        }
        printf("计数器是: %i\n", count);
        count++; // 计数器思想
    }
    
/*
    do while
    先执行循环体, 后进行条件判断(无论条件是否满足, 都会执行一次循环体)
    格式:
    do {
        循环体
    } while (条件表达式); // 注意(条件表达式)后的; 必不可少!!!
 */
    do {
        printf("反正我肯定能执行至少一次\!n");
    } while (1 < 0);
    
/*
    for 循环
    格式:
    for (初始化表达式;条件表达式; 循环后增量表达式) {
        循环体
    }
    Ps:
        如果控制循环的变量, 在循环结束后无其他用处, 则考虑用for, 不用while
    注意:
        1.任何数值都有真假性 for(;1;) --> 死循环  for(;;) --> 死循环
        2.for 也可以省略大括号, 只会将后面最近的一条语句作为循环体
 */
    for (int i = 1; i <= 10; i++) {
        int i = 0;
        printf("%i\n", i); // 0 [就近原则]
    }
    
    
/*
    循环嵌套
    while() {
        while() {
            for(; ; ) {
                do {
                
                } while();
            }
        }
    }
    循环次数 = 外循环执行次数 * 内循环执行次数
 */
    for (int i = 1; i <= 9; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%i * %i = %i \t", j, i, i*j);
        }
        printf("\n");
    }
    
    return 0;
}
