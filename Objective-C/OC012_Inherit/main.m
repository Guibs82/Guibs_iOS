//
//  main.m
//  OC012_Inherit
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
#import "iPhone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Phone *p = [Phone new];
        [p signalWithNumber:@"10086"];
        [p sendMessageWithNumber:@"10086" andContent:@"Hello Guibs"];
        
        iPhone *ip = [iPhone new];
        [ip signalWithNumber:@"10086"];
        [ip sendMessageWithNumber:@"10086" andContent:@"我继承了Phone"];
    }
    return 0;
}
