//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/27.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    int _age;
    
    @private
    double _height;
    
    @protected
    NSString *_name;
    
    @package
    double _weight;
}


@end
