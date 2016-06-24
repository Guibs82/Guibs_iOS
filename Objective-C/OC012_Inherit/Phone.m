//
//  Phone.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (void)signalWithNumber:(NSString *)number {
    NSLog(@"利用Phone 打电话给%@", number);
}

- (void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content {
    NSLog(@"利用手机发送短信\"%@\"给%@", content, number);
}

@end
