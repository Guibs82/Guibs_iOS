//
//  main.m
//  OC043_Category
//
//  Created by 桂朝阳 on 16/7/1.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+InSchool.h"


/*
    方法:
        方法的声明:
        方法的实现:
    
    所以, 通过Category给某个类扩充方法, 也分为声明和实现
 
    格式:
        // 分类的声明
            @interface ClassName (CategoryName)
            NewMethod; // 在类中添加的方法
            // 不允许在类别中添加变量
            @end
 
        // 分类的实现
            @implementation ClassName (CategoryName)
            NewMethod{}
            ...
            @end
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        p.age = 24;
        [p say];
        
        [p study]; // 需导入分类的头文件
        
    }
    return 0;
}
