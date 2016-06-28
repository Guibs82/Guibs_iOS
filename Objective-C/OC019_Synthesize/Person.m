//
//  Person.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/28.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Person.h"

@implementation Person

/*
    @synthesize是一个编译器指令, 帮我们简化getter&setter的实现
    
    1.在@synthesize后面告诉编译器需要实现哪个property生成的声明
    2.告诉@synthesize, 需要将传入的值赋值给谁, 和返回谁的值给调用者
 
    如果在@synthesize后, 未告诉系统要将值赋给谁, 则系统会默认赋值给与@synthesize后面变量名相同的变量
 */
@synthesize age = _age;

@end
