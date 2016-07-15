//
//  ViewController.m
//  UI004_基本控件综合使用_代码版
//
//  Created by 桂朝阳 on 16/7/13.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "ViewController.h"
#import "Shop.h"
#import "GZYShopView.h"
#import "GZYXibShopView.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *shops; // 全部商品数据

@property (weak, nonatomic) IBOutlet UIView *shopViews;
@property (weak, nonatomic) UIButton *insertButton;
@property (weak, nonatomic) UIButton *removeButton;
@property (weak, nonatomic) IBOutlet UILabel *HUD;

- (UIButton *)addButtonWithImage:(NSString *)image highLightImage:(NSString *)highLightImage disableImage:(NSString *)disableImage frame:(CGRect)frame tag:(NSInteger)tag action:(SEL)action;
//- (void)addInsertBTN;
//- (void)addRemoveBTN;
- (void) btnIsEnable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // 加载添加按钮
    self.insertButton = [self addButtonWithImage:@"add" highLightImage:@"add_highlighted" disableImage:@"add_disabled" frame:CGRectMake(30, 30, 50, 50) tag:1 action:@selector(insertClothes)];
    // 加载删除按钮
    self.removeButton = [self addButtonWithImage:@"remove" highLightImage:@"remove_highlighted" disableImage:@"remove_disabled" frame:CGRectMake(self.view.frame.size.width - 50 - 30, 30, 50, 50) tag:2 action:@selector(removeClothes)];
    self.removeButton.enabled = NO;
    
}

- (void)viewDidUnload {
    // view被销毁
    self.shops = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 抽取添加按钮方法
- (UIButton *)addButtonWithImage:(NSString *)image highLightImage:(NSString *)highLightImage disableImage:(NSString *)disableImage frame:(CGRect)frame tag:(NSInteger)tag action:(SEL)action {
    UIButton *newBTN = [[UIButton alloc] init];
    
    [newBTN setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [newBTN setBackgroundImage:[UIImage imageNamed:highLightImage] forState:UIControlStateHighlighted];
    [newBTN setBackgroundImage:[UIImage imageNamed:disableImage] forState:UIControlStateDisabled];
    // 设置按钮尺寸
    newBTN.frame = frame;
    // 监听按钮点击
    [newBTN addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    // 设置tag
    newBTN.tag = 1;
    // 添加控件
    [self.view addSubview:newBTN];
    return newBTN;
}

- (NSArray *)shops {
    if (_shops == nil) {
        // 数据 [加载plist](通过懒加载)[在get方法中加载实现懒加载]
        // 注意: plist 不能命名为诸如info, INFO, Info. 左侧黄色文件夹为虚拟文件夹, 工程文件中并不存在
        /*
         self.shops = @[
         @{
         @"icon": @"danjianbao",
         @"name": @"单肩包"
         },
         @{
         @"icon": @"liantiaobao",
         @"name": @"链条包"
         },
         @{
         @"icon": @"qianbao",
         @"name": @"钱包"
         },
         @{
         @"icon": @"shoutibao",
         @"name": @"手提包"
         },
         @{
         @"icon": @"shuangjianbao",
         @"name": @"双肩包"
         },
         @{
         @"icon": @"xiekuabao",
         @"name": @"斜挎包"
         },
         ];
         */
        // 凡是参数名File的, 都是传全路径
        // 一个NSBundle对象, 对应一个资源包
        // 项目中添加的资源, 都会加到主资源包中
        // [NSBundle mainBundle]关联的就是主资源包
        NSBundle *bundle = [NSBundle mainBundle];
        // 利用mainBundle获取plist在主资源包中的路径
        NSString *fPath = [bundle pathForResource:@"shops" ofType:@"plist"];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:fPath];
        
        // 创建shop对象字典
        NSMutableArray *shopsMArray = [NSMutableArray array];
        // for-in: 取出数组中的字典
        for (NSDictionary *shopDic in dictArray) {
            Shop *shop = [Shop shopWithDic:shopDic];
            [shopsMArray addObject:shop];
        }
        _shops = shopsMArray;
    }
    return _shops;
}

/*
- (void)addInsertBTN {
    // insert按钮
    //    UIButton *insertBTN = [UIButton buttonWithType:UIButtonTypeCustom]; // 设置按钮类型
    UIButton *insertBTN = [[UIButton alloc] init]; // 此时创建的就是自定义类型按钮[与上方效果相同]
    // 设置按钮图片
    [insertBTN setBackgroundImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
    [insertBTN setBackgroundImage:[UIImage imageNamed:@"add_highlighted"] forState:UIControlStateHighlighted];
    [insertBTN setBackgroundImage:[UIImage imageNamed:@"add_disabled"] forState:UIControlStateDisabled];
    // 设置按钮尺寸
    insertBTN.frame = CGRectMake(30, 30, 50, 50);
    // 监听按钮点击
    [insertBTN addTarget:self action:@selector(clickBTN:) forControlEvents:UIControlEventTouchUpInside];
    // 设置tag
    insertBTN.tag = 1;
    // 添加控件
    [self.view addSubview:insertBTN];
}
 */

/*
- (void)addRemoveBTN {
    // remove按钮
    UIButton *removeBTN = [[UIButton alloc] init]; // 此时创建的就是自定义类型按钮[与上方效果相同]
    // 设置按钮图片
    [removeBTN setBackgroundImage:[UIImage imageNamed:@"remove"] forState:UIControlStateNormal];
    [removeBTN setBackgroundImage:[UIImage imageNamed:@"remove_highlighted"] forState:UIControlStateHighlighted];
    [removeBTN setBackgroundImage:[UIImage imageNamed:@"remove_disabled"] forState:UIControlStateDisabled];
    // 设置按钮尺寸
    removeBTN.frame = CGRectMake(self.view.frame.size.width - 30 - 50, 30, 50, 50);
    // 监听按钮点击
    [removeBTN addTarget:self action:@selector(clickBTN:) forControlEvents:UIControlEventTouchUpInside];
    // 设置tag
    removeBTN.tag = 2;
    // 添加控件
    [self.view addSubview:removeBTN];
}
*/

// 在shopViews中添加一项
- (void)insertClothes {
    NSLog(@"insert...");
    
    // 对于超出边界的不显示
    self.shopViews.clipsToBounds = YES;
    
    // 每个shopView的尺寸
    CGFloat shopW = 70;
    CGFloat shopH = 90;
    // 一行的列数
    int cols = 3;
    // 每列之间的距离
    CGFloat colMargin = (self.shopViews.frame.size.width - cols * shopW) / (cols - 1);
    // 没行之间的距离
    CGFloat rowMargin = 10;
    
    // 代码方式创建shopView
    /*
    // 创建一个用于存放图片和文字的容器
    GZYShopView *shopView = [GZYShopView shopView];
    */
    
    // xib方式创建shopView
    GZYXibShopView *shopView = [GZYXibShopView shopView];
     
    // 尺寸&位置计算
    // 商品容器的index
    NSUInteger index = self.shopViews.subviews.count;
    // 商品容器shopView所在列数
    NSInteger col = index % cols;
    // 商品容器shopView的x的值
    CGFloat shopX = col * (shopW + colMargin);
    // 商品容器shopView所在的行
    NSInteger row = index / cols;
    // 商品容器shopView的y的值
    CGFloat shopY = row * (shopH + rowMargin);
    shopView.frame = CGRectMake(shopX, shopY, shopW, shopH);
    [self.shopViews addSubview:shopView];
    
    // 通过index位置从shop数组中获取商品
    Shop *shop = self.shops[index];
    
    // 加载模型数据
     shopView.shop = shop;
    
    // 判断按钮点击性
    [self btnIsEnable];
}

// 在shopViews中减少一项
- (void)removeClothes {
    NSLog(@"remove...");
    // 删除最末尾的shopView
    [[self.shopViews.subviews lastObject] removeFromSuperview];
    // 判断按钮点击性
    [self btnIsEnable];
}

// 检查按钮可点击性
- (void) btnIsEnable {
    /*
    if (self.shopViews.subviews.count == self.shops.count) {
        self.insertButton.enabled = NO;
    } else {
        self.insertButton.enabled = YES;
    }
    if (self.shopViews.subviews.count == 0) {
        self.removeButton.enabled = NO;
    } else {
        self.removeButton.enabled = YES;
    }
     */
    self.insertButton.enabled = (self.shopViews.subviews.count < self.shops.count); // 未满就可以点击添加
    self.removeButton.enabled = (self.shopViews.subviews.count > 0); // 不为0就可以点击删除
    
    // 显示HUD
    if (self.insertButton.enabled == NO) {
        self.HUD.text = @"已经没得添加了";
    } else if (self.removeButton.enabled == NO) {
        self.HUD.text = @"已经没得删除了";
    }
    if (self.HUD.text == nil) return;
    self.HUD.alpha = 0.5;
    //        1.延时调用方法
    // withObject: 给调用需要带参数的方法传递参数
    //        [self performSelector:@selector(hideHUD) withObject:nil afterDelay:1.5];
    //        2.使用定时器调用hideHUD
//    [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(hideHUD) userInfo:nil repeats:NO];
    //        3.使用线程方式 [1.5s]
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self hideHUD];
        self.HUD.text = nil;
    });

}

#pragma mark 隐藏HUD
- (void)hideHUD {
    self.HUD.alpha = 0.1;
}

/*
- (void)clickBTN: (UIButton *)sender {
    NSLog(@"%@", sender);
    if (sender.tag == 1) {
        [self insertClothes];
    } else {
        NSLog(@"remove...");
        [self removeClothes];
    }
}
 */

@end
