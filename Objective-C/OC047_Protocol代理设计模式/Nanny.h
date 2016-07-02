//
//  Nanny.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/2.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Baby;

@interface Nanny : NSObject

- (void)feedFood:(Baby *)baby; // 喂婴儿
- (void)coaxSleep:(Baby *)baby; // 哄婴儿

@end
