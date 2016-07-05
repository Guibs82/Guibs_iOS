//
//  main.m
//  OC063_Copy与Property
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        1.使用copy 防止外界引起的内部数据修改
/*
        NSMutableString *temp = [NSMutableString stringWithFormat:@"Guibs"];
        Person *p = [[Person alloc] init];
        p.name = temp;
        
        [temp appendString:@"烈日朝阳"]; // 当name 是retain时, p.name也会被修改. 当name 是copy时, p.name则不会被修改
//        因此, 字符串属性, 尽量用copy
        NSLog(@"name is %@", p.name);
        
        NSLog(@"%lu", [p retainCount]); // 1
        
        void (^myBlock)() = ^{
            NSLog(@"%@", p);
            NSLog(@"%lu", [p retainCount]);
        };
        
        myBlock(); // retainCount 1
        
        Block_copy(myBlock); // 将block移到堆中
        myBlock(); // retainCount 2
//        block默认存储在栈中, 栈中的block访问了外界对象, 不会进行retain
//        block如果在堆中, 访问了外界对象, 则会对外界对象进行retain操作
*/
        
//        2.使用copy 保存block, 防止调用外部对象时, 被调用的对象被释放引发程序崩溃
/*
        Dog *d = [[Dog alloc] init];
        Person *p = [[Person alloc] init];
        p.pBlock = ^{
            NSLog(@"%@", d);
        };
        [d release]; // 如果d 在调用p.pBlock前释放了, 程序就会崩溃. 在属性设置时, 将block设置为copy, 使其转移至堆中[此时要在Person释放时, 释放dog], 就可以保住block调用的外界对象的命, 避免在使用时, 外界对象被释放
        
        p.pBlock();
        
        [p release];
 */
//        3.copy block 之后引发循环引用
//        如果copy 的block中引用了对象自己, 则要给对象修饰为__block, 避免内存泄露
        __block Person *p = [[Person alloc] init];
        p.name = @"Guibs";
        p.pBlock = ^{
            NSLog(@"%@", p.name); // 因为是堆中的block, 所以p的retainCount +1, 所以将对象修饰为__block
        };
        p.pBlock();
        [p release];
    }
    return 0;
}
