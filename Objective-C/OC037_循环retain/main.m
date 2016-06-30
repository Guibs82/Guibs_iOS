//
//  main.m
//  OC037_循环retain
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        Dog *d = [[Dog alloc] init];
        
        // 如果A和B互相拥有, 此时会导致循环retain
        // 因此不要让A retain B, B retain A  --> 让其中一方, 不要操作retain即可
        p.dog = d; // retain
        d.person = p; // -retain- assign
        
        [d release];
        [p release];
    }
    return 0;
}
