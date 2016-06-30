//
//  main.m
//  OC035_Property修饰符
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        Room *r = [[Room alloc] init];
        Car *c = [[Car alloc] init];
        
        p.room = r;
        p.car = c;
        
        // 换房
        Room *rc = [[Room alloc] init];
        p.room = rc;
        
        
        [c release];
        [r release];
        [p release];
    }
    return 0;
}
