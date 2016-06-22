//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}

-(void)sayNameAndAge;

@end
