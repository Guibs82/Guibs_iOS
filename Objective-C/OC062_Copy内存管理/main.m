//
//  main.m
//  OC062_Copy内存管理
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        浅拷贝
//        不会生成新对象, 系统会对以前的对象进行一次retain
//        一次alloc 对应一次release
//        一次retain 对应一次release
//        一次copy 对应一次release
        
//        深拷贝
//        会生成新对象
//        要对新对象进行release
    }
    return 0;
}
