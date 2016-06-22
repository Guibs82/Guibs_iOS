//
//  main.m
//  OC004_NSString
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (NSString *)sayLove;

@end

@implementation Person

- (NSString *)sayLove {
    return @"我爱你";
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // C语言中的字符串不是对象
        char *cString1 = "C String";
        char cString2[] = "C String";
        // OC的字符串是一个对象
        NSString *str = @"OC String --> NSString";
        
        Person *p = [Person new];
        // 输出OC的字符串使用%@, %@ 就是专门用于输出对象类型的
        NSLog(@"%@", [p sayLove]);

        
//        1.如何创建OC字符串
        NSString *oc_String1 = @"OC String1";
        NSString *oc_String2 = [NSString stringWithFormat:@"I'm &i years old", 24];
        
//        2.如何计算字符串的长度
        // length 计算的是长度而非字节数
        // NSUInteger 实质是 unsigned long
        NSUInteger length = [oc_String1 length];
        NSLog(@"The sizeof oc_String1 is %lu", (unsigned long)length);
        
        
        
    }
    return 0;
}
