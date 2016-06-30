//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;

@interface Person : NSObject

//@property(nonatomic, retain) Dog *dog;
@property(nonatomic, assign) Dog *dog; // 防止循环retain

@end
