//
//  main.m
//  OC020_Property修饰符
//
//  Created by 桂朝阳 on 16/6/28.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p giveHeight:10];
        NSLog(@"height is %lf", p.returnHeight);
    }
    return 0;
}
