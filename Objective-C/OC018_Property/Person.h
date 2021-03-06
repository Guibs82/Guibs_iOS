//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/27.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    double _weight;
    NSString *_name;
}

/*
    setter
    作用: 给成员变量赋值
    特点: 
        1.一定是对象方法 
        2.一定没有返回值 
        3.方法名以set开头, 后面跟上需要赋值的成员变量名, 并去掉下滑线, 首字母大写 
        4.一定有参数, 参数类型与成员变量类型一致, 参数名称就是成员变量名称去掉_
 */
//- (void)setAge:(int)age;
- (void)setWeight:(double)weight;
- (void)setName:(NSString *)name;


/*
    @property --> 编译器指令
    在Xcode4.4- 可以代替getter/setter方法
    编译器只要看到@property, 就知道要为属性生成对应的getter&setter的声明
    在Xcode4.5+ 可以同时生成getter&setter的声明和实现, 如果没有告诉@property要传入的参数赋值给谁, 则会默认赋值给 _参数名
 
    @property弊端:
        只会生成最简单的getter&setter, 并不会对传入的值过滤
        如果要对传入数据进行过滤, 就必须重写getter和setter方法
        如果不需对传入数据过滤, 则可以直接使用@property
 
    如果重写了setter, 则@property只会自动生成getter
    如果重写了getter, 则@property只会自动生成setter
 
    如果利用@property来生成getter&setter, 则可以不写成员变量, 系统会自动生成 _成员变量
    如果同时重写了getter&setter, 则@property不会自动生成 _成员变量
 
    注意: @property自动帮我们生成的成员变量, 是私有的成员变量, 在.m文件中生成, 而非.h中生成的
 */
@property int age; // 通过@property 生成的getter&setter方法名中的变量名就是此处的变量名, 所以age不需要加_

/*
 getter
 作用: 获取成员变量的值
 特点:
 1.一定是对象方法
 2.一定有返回值, 返回值类型就是成员变量类型
 3.方法名就是需要获取的成员变量名, 并去掉下滑线
 4.一定没有参数
 */
//- (int)age;
- (double)weight;
- (NSString *)name;


@end
