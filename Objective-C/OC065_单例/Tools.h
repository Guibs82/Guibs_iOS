//
//  Tools.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@interface Tools : NSObject <NSCopying, NSMutableCopying>
// 一般情况下, 单例对象都有一个与之对应的类方法
// 一般情况下, 用于创建单例对象的类方法名称, 都以share或者default开头

+ (instancetype)shareInstance;

@end
