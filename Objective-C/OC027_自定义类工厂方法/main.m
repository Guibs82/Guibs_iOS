//
//  main.m
//  OC027_自定义类工厂方法
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] init];
        Person *p2 = [Person person];
        
        p1.age = 10;
        p2.age = 20;
        
        NSLog(@"p1's age is %i", p1.age);
        NSLog(@"p2's age is %i", p2.age);
        
        Student *s = [Student person];
        s.age = 24;
        s.no = 10001;
        NSLog(@"the age of s is %i", s.age);
        
    }
    return 0;
}
