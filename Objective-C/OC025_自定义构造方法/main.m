//
//  main.m
//  OC025_自定义构造方法
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] init];
        NSLog(@"%@", p1);
        
        Person *p2 = [[Person alloc] initWithAge:10];
        NSLog(@"%@", p2);
        
        Person *p3 = [[Person alloc] initWithName:@"Guibs"];
        NSLog(@"%@", p3);
        
        Person *p4 = [[Person alloc] initWithAge:8 andName:@"Gubis"];
        NSLog(@"%@", p4);
    }
    return 0;
}
