//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportProtocol.h"
#import "Student.h"

@interface Person : NSObject <SportProtocol> // 多个协议可以以","隔开

@property(nonatomic, strong) Student<SportProtocol> *student; // 用协议来限定数据类型

@end
