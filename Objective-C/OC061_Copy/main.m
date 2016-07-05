//
//  main.m
//  OC061_Copy
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        copy 产生不可变副本, 要遵守NSCopying协议
//        mutableCopy 产生可变父本, 要遵守NSMutableCopying协议
        NSString *str = @"Guibs";
//        只要copy的对象, 与原对象内容一致
//        一般来说, copy都会生成一个新对象
        NSMutableString *copyStr = [str mutableCopy];
        NSLog(@"%@, %p", str, &str);
        NSLog(@"%@, %p", copyStr, &copyStr);
        
        NSMutableString *strM = [NSMutableString stringWithFormat:@"Guibs82"];
        NSMutableString *copyStrM = [strM mutableCopy];
        [strM appendFormat:@" Fighting"];
        NSLog(@"%@, %p", strM, &strM);
        NSLog(@"%@, %p", copyStrM, &copyStrM);
        
        NSMutableString *strM2 = [NSMutableString stringWithFormat:@"Guibs082"];
        NSString *copyStr2 = [strM2 copy];
        [strM2 appendFormat:@" Fighting"];
        NSLog(@"%@, %p", strM2, &strM2);
        NSLog(@"%@, %p", copyStr2, &copyStr2);
        
        NSString *str_1 = @"Hello Guibs";
        NSString *str_1_copy = [str_1 copy];
        NSLog(@"%@, %p", str_1, &str_1);
        NSLog(@"%@, %p", str_1_copy, &str_1_copy);
        
//        会创建新对象的copy为深copy
//        不会创建新对象的为浅copy, 只有被拷贝对象与拷贝后生成的对象都不可变, 才会浅拷贝

    }
    return 0;
}
