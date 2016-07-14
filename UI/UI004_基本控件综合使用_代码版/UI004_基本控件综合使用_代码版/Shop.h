//
//  Shop.h
//  UI004_基本控件综合使用_代码版
//
//  Created by 桂朝阳 on 16/7/14.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shop : NSObject
/**商品名*/
@property (nonatomic, strong) NSString *name;

/**图标*/
@property (nonatomic, strong) NSString *icon;

/**通过字典创建对象*/
+ (instancetype)shopWithDic: (NSDictionary *)dataDic;

/**通过字典初始化对象*/
- (instancetype)initWithDic: (NSDictionary *)dataDic;

@end
