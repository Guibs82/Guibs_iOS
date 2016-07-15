//
//  GZYXibShopView.h
//  UI004_基本控件综合使用_代码版
//
//  Created by 桂朝阳 on 16/7/15.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Shop;

@interface GZYXibShopView : UIView

/**商品模型*/
@property (nonatomic, strong) Shop *shop;

+ (instancetype)shopView;

+ (instancetype)shopViewWithShop:(Shop *)shop;

@end
