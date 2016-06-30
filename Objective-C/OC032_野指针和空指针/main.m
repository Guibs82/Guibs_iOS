//
//  main.m
//  OC032_野指针和空指针
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
        [p release];
        // [p release]; // 报错 *** -[Person release]: message sent to deallocated instance 0x100200f10 [需要Edit Secheme --> Diagnostics --> Zombie Object]
        
        /*
            只要一个对象被释放了, 我们就称之为僵尸对象
            当一个指针指向一个僵尸对象, 我们就称之为野指针
            只要给一个野指针发送消息, 就会报错 EXC_BAD_ACCESS
         */
        
        // 空指针
        // 为了避免给野指针发送消息会报错, 一般当一个对象释放后, 我们将指向这个对象的指针设置为空指针
        // 因为OC对空指针发消息不报错
        p = nil;
    }
    return 0;
}
