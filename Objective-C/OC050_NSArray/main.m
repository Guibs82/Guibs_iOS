//
//  main.m
//  OC050_NSArray
//
//  Created by 桂朝阳 on 16/7/4.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr1 = [NSArray arrayWithObject:@"Guibs"];
        NSLog(@"%@", arr1);
        
//        nil是数组的结束符
        NSArray *arr2 = [NSArray arrayWithObjects:@"Guibs", @"Joker", @"Rio_G", nil];
        NSLog(@"%@", arr2);
        
        Person *p = [Person new];
        NSObject *obj = [NSObject new];
        NSArray *arr3 = [NSArray arrayWithObjects:p, obj, @"Guibs", nil];
        NSLog(@"%@", arr3);
        
//        数组长度
        NSInteger count = [arr3 count];
        NSLog(@"%lu", count);
        
//        最后一个元素
        NSLog(@"%@", [arr3 lastObject]);
        
//        首个元素
        NSLog(@"%@", [arr3 firstObject]);
        
//        特定元素
        NSLog(@"%@", [arr3 objectAtIndex:0]);
        
//        是否包含某个元素
        if (([arr3 containsObject:@"Guibs"])) {
            NSLog(@"arr3 包含Gubis");
        } else {
            NSLog(@"arr3 不包含Gubis");
        }
        
//        创建数组[简写]
        NSArray *arr4 = @[@"g", @"h"];
        NSLog(@"%@", arr4);
        
//        取出数组元素[简写]
        NSLog(@"%@", arr4[0]);
        
//        遍历数组
//        1.for循环遍历
        for (int i = 0; i < arr3.count; i++) {
            NSLog(@"arr[%i] = %@", i, arr3[i]);
        }
//        2.如果是OC数组, 可以使用forin
//        注意: obj的类型可以根据数组中的元素类型来确定
        for (NSObject *obj in arr3) {
            NSLog(@"%@", obj);
        }
//        3.使用OC数组的迭代器
//        obj 当前取出元素
//        idx 当前取出元素的索引
//        stop 用于控制停止遍历
        [arr3 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"enumerate arr3[%lu] = %@", idx, obj);
        }];
        
        
//        如果用OC数组存储了对象, 则可以用OC数组的方法, 使得数组中的对象都执行特定的方法
//        注意: 如果数组中保存的是不同类的对象, 且没有相同方法, 则会报错
//        1.迭代器
        Person *p1 = [Person new];
        p1.age = 20;
        Person *p2 = [Person new];
        p2.age = 18;
        Person *p3 = [Person new];
        p3.age = 23;
        Person *p4 = [Person new];
        p4.age = 21;
        NSArray *arr5 = @[p1, p2, p3, p4];
        [arr5 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj say];
        }];
//        2.makeObjectsPerformSelector:
        [arr5 makeObjectsPerformSelector:@selector(say)];
        [arr5 makeObjectsPerformSelector:@selector(sayWithName:)withObject:@"Guibs"];
        
        
//        数组排序
//        注意: 使用compare: 对数组进行排序, 数组对象必须为Foundation框架中的对象, 不能是自定义对象
        NSArray *arr6_1 = @[@"1", @"6", @"3", @"4", @"2", @"5"];
        NSLog(@"排序前: %@", arr6_1);
        NSArray *arr6_2 = [arr6_1 sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"排序后: %@", arr6_2);
//        对自定义对象排序[根据age对Person对象排序]
        NSLog(@"排序前: %@", arr5);
//        默认按照升序
        NSArray *arr5_2 = [arr5 sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(Person *obj1, Person *obj2) {
            return obj1.age - obj2.age; // 升序
        }];
        NSLog(@"排序后: %@", arr5_2);
        
//        数组转字符串
//          componentsJoinedByString: 以xxx链接字符串
        NSString *str = [arr6_1 componentsJoinedByString:@"-"];
        NSLog(@"%@", str);
        
//        字符串转数组
//        componentsSeparatedByString: 以xxx分割字符串为数组
        NSArray *arr7 = [str componentsSeparatedByString:@"-"];
        NSLog(@"%@", arr7);
        
//        数组写入文件
//        如果将数组写入文件中, 本质是写入一个xml文件
//        一般将该文件的扩展名, 命名为plist
//        注意: writeToFile 只能写入Foundation框架的对象到文件中
        NSArray *arr8 = @[@"Guibs", @"Joker"];
        BOOL writeResult = [arr8 writeToFile:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC050_NSArray/Array.plist" atomically:YES];
        if (writeResult) {
            NSLog(@"写入成功");
        } else {
            NSLog(@"写入失败");
        }
        
//        从文件读取数组
        NSArray *arr9 = [NSArray arrayWithContentsOfFile:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC050_NSArray/Array.plist"];
        NSLog(@"file array is %@", arr9);
    }
    return 0;
}
