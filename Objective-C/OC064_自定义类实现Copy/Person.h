//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(nonatomic, assign) int age;
@property(nonatomic,copy) NSString *name;

@end
