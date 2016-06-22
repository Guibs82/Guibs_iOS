//
//  main.m
//  OC005_StructForMethod
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    设计一个学生类:
    姓名 生日
    说出姓名, 说出生日
 */

typedef struct {
    int year;
    int month;
    int day;
} Date;

@interface Student : NSObject
{
    @public
    NSString *_name;
    Date _birthday;
}

- (void)say;

@end

@implementation Student

- (void)say {
    NSLog(@"name is %@, birthday is %i-%i-%i", _name, _birthday.year, _birthday.month, _birthday.day);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [Student new]; //  isa = &Student, _name = null, birthday.year = 0, birthday.month = 0, birthday.day = 0
        [stu say];
        
        stu -> _name = @"Guibs";
        stu -> _birthday.year = 1992;
        stu -> _birthday.month = 12;
        stu -> _birthday.day = 4;
        [stu say];
        
//        由于结构体在对象被创建时, 已被初始化过, 因而可以采取新建结构体的方式来间接赋值
        Date d = {2009, 8, 2};
        stu -> _birthday = d;
        [stu say];
    }
    return 0;
}
