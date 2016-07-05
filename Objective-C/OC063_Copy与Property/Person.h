//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^myBlock)();

@interface Person : NSObject

//@property(nonatomic, retain) NSString *name;
@property(nonatomic, copy) NSString *name;

//@property(nonatomic, assign) myBlock pBlock;

// 对block进行copy, 不是拷贝, 而是转移
@property(nonatomic, copy) myBlock pBlock;

@end
