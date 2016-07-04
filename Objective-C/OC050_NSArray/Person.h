//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/4.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, assign) int age;

- (void)say;

- (void)sayWithName:(NSString *)name;


@end
