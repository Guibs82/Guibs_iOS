//
//  main.m
//  OC054_常用结构体
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSPoint CGPoint  [typedef CGPoint NSPoint;]
//        保存坐标
        CGPoint point = CGPointMake(1, 2);
        point = NSMakePoint(1, 4);
        
//        保存尺寸
//        NSSize CGSize [typedef CGSize NSSize;]
        CGSize size = NSMakeSize(1, 2);
        size = CGSizeMake(1, 4);
        
//        保存坐标和尺寸
//        NSRect CGRect [typedef CGRect NSRect;]
        CGRect rect = CGRectMake(1, 2, 1, 2);
        rect = NSMakeRect(1, 4, 1, 4);
        
//        注意:
//          开发中一般使用CG开头的结构体
        
    }
    return 0;
}
