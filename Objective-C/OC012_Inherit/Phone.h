//
//  Phone.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    int _cpu;
}

// 打电话
- (void)signalWithNumber:(NSString *)number;
// 发短信
- (void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content;

@end
