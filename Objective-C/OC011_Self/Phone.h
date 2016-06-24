//
//  Phone.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    kFlahlightStatusOpen,
    kFlahlightStatusClose
} FlahlightStatus;

@interface Phone : NSObject
{
    int _cpu;
}

- (void)cameraWithFlahlightStatus:(FlahlightStatus)status;
- (void)openFlahlight;
- (void)closeFlahlight;
- (void)setCPU:(int)cpu;

@end
