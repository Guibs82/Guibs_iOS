//
//  Person+InSchool.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

/*
    注意:
        1.分类是给原有类添加方法的, 只能添加方法, 不能添加属性
        2.分类中的@property只会生产setter和getter的声明, 不会生成setter和getter的实现以及对应的私有成员变量
        3.可以在分类中的方法调用原类的属性
        4.如果分类中有和原类中同名的方法, 则调用时调用分类的方法
        5.如果多个分类中都有同名的方法, 则调用时由编译器决定, 调用最后一个参与编译的分类中的方法(Build Phases中查看编译顺序)
 
    方法调用顺序: 分类 -> 本类 -> 父类
 */

@interface Person (InSchool)

// 扩充方法
- (void)study;

- (void)say;

@end
