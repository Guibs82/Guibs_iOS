//
//  Shop.m
//  UI004_基本控件综合使用_代码版
//
//  Created by 桂朝阳 on 16/7/14.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "Shop.h"

@implementation Shop

+ (instancetype)shopWithDic:(NSDictionary *)dataDic {
    return [[self alloc] initWithDic:dataDic];
}

- (instancetype)initWithDic: (NSDictionary *)dataDic {
    if (self = [super init]) {
        self.name = dataDic[@"name"];
        self.icon = dataDic[@"icon"];
    }
    return self;
}

@end
