//
//  Student.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property int no;

- (instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(int)number;

@end
