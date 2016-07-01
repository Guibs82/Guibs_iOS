//
//  Gun.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/23.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gun : NSObject
{
    //    @public -- 默认protected
    int _bullet; // 子弹
    // 虽然成员变量不是public后, 外界不能直接访问了, 但还是可以再本类的对象方法中直接访问
    int _size; // 尺寸
    NSString *_model; // 型号
    int _color; // 颜色
    double _weight; // 重量
}

/*
 设计方法
 */
- (void)shoot;

- (void)addBullet:(int)bulletNumber;

/*
 由于我们经常定义一些方法来操作成员变量, 每个方法都起有意义的名字太困难, 因而使用getter & setter
 */

/*
    setter方法:
    作用: 设置成员变量的值 可以监听属性变化, 作出相应操作
    写法: 1.setter方法一定是对象方法 2.一定没有返回值 3.一定以set开头, 后接无_的成员变量名, 且成员变量名首字母大写 4.一定有参数, 参数类型一定与需要设置的属性/ 成员变量的类型一致, 且参数名称就是成员变量名称去掉_
 */
- (void)setSize:(int)size;

/*
    getter方法:
    作用: 获取成员变量的值
    写法: 1.getter方法一定是对象方法 2.一定有返回值 3.一定以get开头, 后接无_的成员变量名, 且成员变量名首字母大写 4.一定没参数
 */
- (int)getBullet;

/*
    如果某个属性只提供了setter 没有getter, 则该属性为只写属性
    如果某个属性只提供了getter 没有setter, 则该属性为只读属性
    如果某个属性提供了setter 和getter, 则该属性为可读可写属性
    如果某个属性没有提供setter 和getter, 则该属性称为私有属性
 */


@end
