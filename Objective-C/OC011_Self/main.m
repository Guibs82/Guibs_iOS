//
//  main.m
//  OC011_Self
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Phone *p = [Phone new];
        
        [p cameraWithFlahlightStatus:kFlahlightStatusOpen];
        
        [p cameraWithFlahlightStatus:kFlahlightStatusClose];
    }
    return 0;
}
