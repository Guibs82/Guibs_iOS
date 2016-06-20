//
//  main.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/21.
//  Copyright © 2016年 NexTed. All rights reserved.
//

// Foundation.h 我们称之为主头文件, 内部会导入该工具箱中所有的头文件 [间接拷贝]
#import <Foundation/Foundation.h>
#import "sum.h"
// #import 的功能和 #include 一样, 将右侧的文件拷贝到当前位置
// 为了降低程序员的负担, 防止重复导入, 避免程序员书写头文件卫视, OC 新增了预处理指令 #import, 会自动防止重复拷贝

// 工具箱地址: /Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks

// 所有的主头文件都和工具箱的名称一致
// 所有的主头文件都是导入了该工具箱中所有工具的头文件

/*
    因为OC 完全兼容C, 所以可以在OC 重编译C 的文件, 并且可以将C 的源文件 和OC 的源文件组合一起生成可执行文件
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        OC 兼容 C
        printf("OC 兼容 C\n");
//        OC 的 "printf"
        NSLog(@"OC 的 printf \n 就是NSLog");
        /*
            printf 和 NSLog 的区别:
            1.NSLog 会自动换行
            2.NSLog 在输出内容时, 会附加一些系统信息
            3.接收的参数不同, NSLog 接收的是OC 字符串, printf 接收的是C 字符串
         */
        NSLog(@"sum 1 & 2 is %i", sum(1, 2));
    }
    return 0;
}
