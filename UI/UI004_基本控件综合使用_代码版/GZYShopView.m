//
//  GZYShopView.m
//  UI004_基本控件综合使用_代码版
//
//  Created by 桂朝阳 on 16/7/14.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "GZYShopView.h"
#import "Shop.h"

@interface GZYShopView ()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation GZYShopView

+ (instancetype)shopView {
    return [[self alloc] init];
}

// 懒加载
- (UIImageView *)iconView {
    if (_iconView == nil) {
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.backgroundColor = [UIColor redColor];
        [self addSubview:iconView];
        _iconView = iconView;
    }
    return _iconView;
}

- (UILabel *)nameLabel {
    if (_nameLabel == nil) {
        UILabel *label = [[UILabel alloc] init];
        label.font = [UIFont systemFontOfSize:20];
        label.textAlignment = NSTextAlignmentCenter;
        label.backgroundColor = [UIColor greenColor];
        [self addSubview:label];
        _nameLabel = label;
    }
    return _nameLabel;
}

// 由于懒加载配合layoutSubviews, 所以不需要单独重写initWithFrame
/*
// 重写initWithFrame:
// 因为调用init时, 也会调用initWithFrame, 而调用initWithFrame, 不会调用init
//- (instancetype)initWithFrame:(CGRect)frame {
//    if (self = [super initWithFrame:frame]) {
//        self.backgroundColor = [UIColor blueColor];
//        
//        UIImageView *iconView = [[UIImageView alloc] init];
//        iconView.backgroundColor = [UIColor redColor];
//        [self addSubview:iconView];
//        self.iconView = iconView;
//        
//        UILabel *label = [[UILabel alloc] init];
//        label.font = [UIFont systemFontOfSize:20];
//        label.textAlignment = NSTextAlignmentCenter;
//        label.backgroundColor = [UIColor greenColor];
//        [self addSubview:label];
//        self.nameLabel = label;
//    }
//    return self;
//}
*/
/**
    layoutSubviews
    专门用于布局子控件, 一般在此设置子控件frame
    当空间本身尺寸变化时, 系统会自动调用该方法
 */
- (void)layoutSubviews {
    // 一定要调用 [super layoutSubviews];
    [super layoutSubviews];
    CGFloat shopW = self.frame.size.width;
    CGFloat shopH = self.frame.size.height;
    // 图片尺寸设置
    /*
     //    NSArray *images =  @[@"danjianbao", @"liantiaobao", @"qianbao"];
     //    iconView.image = [UIImage imageNamed:images[index]];
     iconView.image = [UIImage imageNamed:shop.icon];
     */
    self.iconView.frame = CGRectMake(0, 0, shopW, shopW);
    // 文本尺寸设置
    /*
     //    NSArray *texts =  @[@"单肩包", @"链条包", @"钱包"];
     //    label.text = texts[index];
     label.text = shop.name;
     */
    self.nameLabel.frame = CGRectMake(0, shopW, shopW, shopH - shopW);
}

// 重写setShop -- 在此对view中的组件加载数据
- (void)setShop:(Shop *)shop {
    _shop = shop;
    self.nameLabel.text = shop.name;
    self.iconView.image = [UIImage imageNamed:shop.icon];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
