//
//  SportProtocol.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    注意: 
    1.协议只能声明方法, 不能声明属性
    2.父类遵守了某个协议, 子类也会自动遵守该协议
    3.OC中, 类是单继承, 但可以遵守多个协议
    4.OC的协议也可以遵守其他协议, 当一个类遵守了一个遵守了其他协议的协议, 则会一并遵守所有协议
 
    规范:
    1.一般情况下, 协议属于谁, 就写在谁的头文件中
    2.协议的名称, 一般以它属于的那个类开头, 后面接上Protocol或者Delegate
    3.协议中的方法名称, 一般以协议名称(Protocol前)开头
    4.一般会将触发该协议的对象传递出去
    5.一般情况下, 类中的代理属性, 名称叫delegate
    6.当一个类要成为另外一个类的代理时, 在.h中用@protocol 协议名称; 告诉当前类这是一个协议. 在.m中, 用#import真正导入协议的声明
 */

@protocol SportProtocol <NSObject> // <NSObject>是基协议, 建议每个新协议都遵守NSObject协议
// 方法声明列表
@required // 必须实现 [默认] 若遵守协议的类未实现, 会报警告
- (void)playFootball;

- (void)playBasketball;

@optional // 选择实现
- (void)playBaseball;

// 注意: @required和@optional仅仅用于程序员交流, 并不能严格控制某个遵守该协议的类一定要实现, 因为即便不实现, 也不会报错, 只会警告
// 因此, 在使用遵循某个协议的类, 最好用respondsToSelector判断是否实现了某个协议的方法

@end
