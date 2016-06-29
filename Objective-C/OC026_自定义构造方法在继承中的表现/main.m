//
//  main.m
//  OC026_自定义构造方法在继承中的表现
//
//  Created by 桂朝阳 on 16/6/29.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *s1 = [[Student alloc] initWithAge:24 andName:@"Guibs"];
        NSLog(@"%@", s1);
        
        Student *s2 = [[Student alloc] initWithAge:24 andName:@"Guibs" andNo:10001];
        NSLog(@"%@", s2);
    }
    return 0;
}
