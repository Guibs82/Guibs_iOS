//
//  main.m
//  OC016_Description
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setName:@"Guibs"];
        [p setAge:24];
        
        // %@ 是用于打印对象的, 本质是打印一个字符串
        // 只要用%@ 打印某个对象, 系统就会默认调用description 方法
            // 可以重写description 方法, 返回我们需要打印的内容
        // 调用该方法, 会返回一个字符串. 默认格式: <类的名称: 对象的地址>
        NSLog(@"name is %@, age is %i", [p name], [p age]);
        
        // class, 只要给类发送class消息, 就会返回当前类对象
        NSLog(@"当前对象对应的类 = %@", [Person class]);
        NSLog(@"当前对象地址 = %p", [Person class]);
        
        // 获取Person对应的类对象
        Class c = [Person class];
        NSLog(@"Class Person is %@", c);
        
        /*
            如果通过%@打印对象, 就会调用 -description
            如果通过%@打印类对象, 就会调用+description
         */
        
//        建议: 在重写description时, 尽量不要使用self来获取实例变量. 因为如果在description中使用%@输出self, 会造成死循环
    }
    return 0;
}
