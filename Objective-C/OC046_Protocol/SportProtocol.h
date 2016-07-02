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
