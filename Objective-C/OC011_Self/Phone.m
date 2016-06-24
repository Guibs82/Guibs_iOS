//
//  Phone.m
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (void)cameraWithFlahlightStatus:(FlahlightStatus)status {
    if (status == kFlahlightStatusOpen) {
        
        /*
            在类方法中调用类方法, 除了可以使用类名外, 还可以使用self 调用
            self 不仅可以调用类方法, 还可以调用对象方法
         */
        
        /*
            如果self 在对象方法中, self 就代表调用当前对象方法的那个对象
            如果self 在类方法中, 那么self 就代表调用当前类方法的那个类
         
            我们只关注self 在哪个方法中, 如果在类方法中, 则代表当前调用该方法的类. 在对象方法中, 则代表当前调用该方法的对象
         
            注意: 1.self 会自动区分类方法和对象方法, 如果在类方法中使用self 调用对象方法, 会直接报错
                 2.不能再对象方法中使用self 调用当前对象方法, 会引发死循环
         */
        
//        [Phone openFlahlight];
        [self openFlahlight];
        NSLog(@"咔嚓咔嚓的闪光灯");
    } else {
//        [Phone closeFlahlight];
        [self closeFlahlight];
        NSLog(@"咔嚓一下没闪光");
    }
}

- (void)openFlahlight {
    NSLog(@"打开闪光灯");
}

- (void)closeFlahlight {
    NSLog(@"关闭闪光灯");
}

- (void)setCPU:(int)cpu {
    self -> _cpu = cpu;
}

@end
