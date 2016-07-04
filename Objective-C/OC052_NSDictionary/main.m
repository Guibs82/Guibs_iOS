//
//  main.m
//  OC052_NSDictionary
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        注意: 和数组不同, 字典中的数据是无序的
        
//        1.如何创建字典和获取元素
        NSDictionary *dic1= [NSDictionary dictionaryWithObject:@"Gubis" forKey:@"name"];
        NSString *name = [dic1 objectForKey:@"name"];
        NSLog(@"name is %@", name);
        
//        注意: key 和 value 是一一对应的
        NSDictionary *dic2 = [NSDictionary dictionaryWithObjects:@[@"Guibs", @24] forKeys:@[@"name", @"age"]];
        NSLog(@"name is %@", dic2);
        
        NSDictionary *dic3 = @{@"name": @"Guibs", @"age": @24};
        NSLog(@"%@, %@", dic3[@"name"], dic3[@"age"]);
        
//        2.遍历字典
//        2.1字典中的对数
        NSLog(@"cout is %lu", [dic3 count]);
//        2_1 for
        for (int i = 0; i < [dic3 count]; i++) {
//            获取字典中所有的key
            NSArray *keys = [dic3 allKeys];
            NSString *key = keys[i];
            NSString *value = dic3[key];
            NSLog(@"key is %@, value is %@", key, value);
        }
//        2_2 forin
//        使用forin 遍历字典, 会将key赋值给obj
        for (NSString *obj in dic3) {
            NSLog(@"key is %@, value is %@", obj, dic3[obj]);
        }
//        2_3 迭代器
        [dic3 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"enumerate key is %@, value is %@", key, obj);
        }];
        
//        3.字典写入文件
        BOOL dicResult = [dic3 writeToFile:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC052_NSDictionary/Dictionary.plist" atomically:YES];
        if (dicResult) {
            NSLog(@"写入成功");
        }
        
//        4.读文件中的字典
        NSDictionary *dicF = [NSDictionary dictionaryWithContentsOfFile:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC052_NSDictionary/Dictionary.plist"];
        NSLog(@"%@", dicF);
    }
    return 0;
}
