//
//  main.m
//  OC013_Super
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iPhone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        iPhone *ip = [iPhone new];
        [ip signalWithNumber:@"10086"];
    }
    return 0;
}
