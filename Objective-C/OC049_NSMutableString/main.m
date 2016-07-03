//
//  main.m
//  OC049_NSMutableString
//
//  Created by 桂朝阳 on 16/7/4.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Gubis";
        NSLog(@"%p", str); // 0x100001048
        
        str = @"guibs"; // 更改str指向的地址
        NSLog(@"%p", str); // 0x100001088
        
        NSMutableString *mStr = [NSMutableString stringWithFormat:@"Guibs"];
        NSLog(@"%p", mStr); // 0x1001022e0
        [mStr appendString:@" Fighting"];
        NSLog(@"%p", mStr); // 0x1001022e0
        
//        常用方法
        NSMutableString *strM = [NSMutableString stringWithFormat:@"Test: 82 "];
//        1.追加字符串
        [strM appendString:@"append"];
        NSLog(@"%@", strM);
        [strM appendFormat:@" %i", 82];
        NSLog(@"%@", strM);

//        2.删除字符串中的字段
//        在开发中常使用rangeOfString: 和deleteCharactersInRange: 配合删除某些字符串中的字段
        [strM deleteCharactersInRange:NSMakeRange(0, 5)];
        NSLog(@"%@", strM);

//        3.插入字符串
        [strM insertString:@"Test: " atIndex:0];
        NSLog(@"%@", strM);
        
//        4.替换字符串
//        replaceOccurrencesOfString:(nonnull NSString *) withString:(nonnull NSString *) options:(NSStringCompareOptions) range:(NSRange)
//        PS 如果OC中的方法需要传入枚举的地方, 如果不想使用枚举的值, 则传入0, 代表采取系统默认方式
//        options: 搜索的方式
//        返回替换的字符串数量
        NSUInteger count = [strM replaceOccurrencesOfString:@"82" withString:@"Gubis82" options:0 range:NSMakeRange(0, strM.length)];
        NSLog(@"%@, changeCount is %lu", strM, count);
    }
    return 0;
}
