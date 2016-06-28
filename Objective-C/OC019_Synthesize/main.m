//
//  main.m
//  OC019_Synthesize
//
//  Created by 桂朝阳 on 16/6/28.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:24];
        NSLog(@"age is %i, _age is %i, _number is %i", [p age], p ->_age, p -> _number);
    }
    return 0;
}
