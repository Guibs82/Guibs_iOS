//
//  main.m
//  OC064_自定义类实现Copy
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            希望自己的对象能够被copy/mutableCopy 只需要
            1.遵循<NSCopying>/<NSMutableCopying>
            2.实现 - (id)copyWithZone:(NSZone *)zone/ - (id)mutableCopyWithZone:(NSZone *)zone
            3.创建并返回一个副本
         */
        
        Person *p = [[Person alloc] init];
        p.age = 24;
        p.name = @"Guibs";
        NSLog(@"%@", p.name);
        
        Person *cP = [p copy];
        NSLog(@"%@", cP.name);
        
        Student *s = [[Student alloc] init];
        s.age = 24;
        s.name = @"Guibs";
        s.height = 185.0;
        NSLog(@"%@, %d, %f", s.name, s.age, s.height);
        Student *cS = [s copy];
        NSLog(@"%@, %d, %f", cS.name, cS.age, cS.height); // 如果子类不重写copyWithZone, 则会调用父类的, 所以height将为默认值0
        
    }
    return 0;
}
