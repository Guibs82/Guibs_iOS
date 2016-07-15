//
//  GZYXibShopView.m
//  UI004_基本控件综合使用_代码版
//
//  Created by 桂朝阳 on 16/7/15.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "GZYXibShopView.h"
#import "Shop.h"

@interface GZYXibShopView ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation GZYXibShopView

- (void)setShop:(Shop *)shop {
    _shop = shop;
    
    // 设置子控件数据
    self.iconView = (UIImageView *)[self viewWithTag:1];
    self.iconView.image = [UIImage imageNamed:shop.icon];
    
    self.nameLabel = (UILabel *)[self viewWithTag:2];
    self.nameLabel.text = shop.name;
}

+ (instancetype)shopView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

+ (instancetype)shopViewWithShop:(Shop *)shop {
    GZYXibShopView *shopView = [self shopView];
    shopView.shop = shop;
    return shopView;
}

// 加载xib方式
/*
    1.
    NSArray *objs = [[NSBundle mainBundle] loadNibNamed:@"XXXX" owner:nil options:nil];
    [self.view addSubview: objs[n]]; // 因为一个xib文件内可能有多个控件, 所以用obj[n]的方式获取
    
    2.
    // 一个UINib对象就代表一个xib文件
    UINib *nib = [UINib nibWithNibName:@"XXX" bundle:[NSBundle mainBundle]]; // bundle: nil [此时nil默认为[NSBundle mainBundle]];
    NSArray *objs = [nib instantiateWithOwner:nil options:nil];
    [self.view addSubview:[objs lastObject]];
 */

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
