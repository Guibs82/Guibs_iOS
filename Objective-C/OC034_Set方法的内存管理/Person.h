//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

@interface Person : NSObject
{
    Room *_room;
}

- (void)setRoom:(Room *)room;
- (Room *)room;

@end
