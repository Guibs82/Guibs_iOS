//
//  main.m
//  OC053_NSMutableDictionary
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        1.创建一个空的字典
//          注意:
//              1.不能使用@{}创建一个可变字典
//              2-1.如果是不可变字典, key不能重复, 写在后面的重复的key对应的元素将不会被保存
//              2-2.如果是可变字典, 写在后面的重复的key对应的元素将会覆盖之前的值
        NSMutableDictionary *dicM = [NSMutableDictionary dictionary];
        NSLog(@"%@", dicM);
        
//        2.如何添加
        [dicM setObject:@"Guibs" forKey:@"name"];
        NSLog(@"%@", dicM);
        [dicM setValuesForKeysWithDictionary:@{@"age": @24, @"hobby": @"Dev"}];
        NSLog(@"%@", dicM);
        
//        3.如何获取
        NSLog(@"name is %@, age is %@, hobby is %@", dicM[@"name"], dicM[@"age"], dicM[@"hobby"]);
        
//        4.如何删除
        [dicM removeObjectForKey:@"hobby"];
        NSLog(@"%@", dicM);
        [dicM removeObjectsForKeys:@[@"age", @"name"]];
        NSLog(@"%@", dicM);
        
//        5.如何修改
//        如果利用setObject: forKey: 给同名key赋值, 新值会覆盖旧值
        [dicM setObject:@"Guibs" forKey:@"name"];
        NSLog(@"%@", dicM);
        [dicM setObject:@"Guibs82" forKey:@"name"];
        NSLog(@"%@", dicM);
    }
    return 0;
}
