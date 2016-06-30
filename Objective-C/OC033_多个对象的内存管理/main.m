//
//  main.m
//  OC033_多个对象的内存管理
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1.创建对象
        Person *p = [[Person alloc] init];
        Room *r = [[Room alloc] init];
        
        r.no = 888;
        // 将房间赋值给人, 只要人在, 房就一定在
        p.room = r; // [p setRoom:r]
        
        [r release];
        
        NSLog(@"人还没释放, 房间怎么能收回?!");
        
        [p release]; // 人都不在了, 房间也该销毁了
    }
    return 0;
}
