//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

/*
    重写init方法, 在init中初始化成员变量
    注意: 重写init方法, 必须按照苹果规定的格式重写, 如果不按照规定就会引发一些未知错误
    格式:
        1.必须先初始化父类, 再初始化子类
        2.必须判断父类是否初始化成功, 只有父类初始化成功, 才可以继续初始化子类
        3.返回当前对象的地址
 */
- (instancetype)init
{
    // 1.初始化父类, 只要父类初始化成功, 就会返回对应地址. 失败就返回nil [nil == 0 == 假 == 不成功]
    self = [super init];
    if (self) { // 2.判断父类是否初始化成功(self != nil)
        // 3.初始化子类(设置子类属性的值)
        self.age = 6;
        _age = 8;
    }
    return self;
}

@end
