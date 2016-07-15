//
//  ViewController.m
//  UI005_UIScrollView的基本使用
//
//  Created by 桂朝阳 on 16/7/15.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIImageView *imageView = [[UIImageView alloc] init]; 
//    imageView.image = [UIImage imageNamed:@"labixiaoxin"];
//    imageView.frame = CGRectMake(0, 0, imageView.image.size.width, imageView.image.size.width);
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"labixiaoxin"]];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    
    /*
        要设置scrollView.contentSize(可滚动的距离), 才可以让scrollView可以滚动
        如果要禁止某个方向的滚动, 就可以设置哪个方向(width或height)为0
     */
    self.scrollView.contentSize = CGSizeMake(imageView.image.size.width, imageView.image.size.height);
    self.scrollView.scrollEnabled = YES; // 设置是否可滚动(默认YES)
    self.scrollView.bounces = YES; // 设置scrollView的弹簧效果[NO,则达到contentSize就不可再继续拉动]
    self.scrollView.showsVerticalScrollIndicator = NO; //是否显示垂直滚动条
    self.scrollView.showsHorizontalScrollIndicator = YES; //是否显示水平滚动条
    self.scrollView.contentInset = UIEdgeInsetsMake(50, 50, 50, 50); // 设置scrollView的非自动弹回区域大小
    self.scrollView.contentOffset = CGPointMake(0, -50); //避开contentInset, 防止遮挡
    [self.scrollView addSubview:button];
    [self.scrollView addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
    scrollView.contentOffset: 偏移量
        内容左上角与scrollView左上角的距离
        内容物在scrollView的左上---正
        内容物在scrollView的右下---负
 */
- (IBAction)left:(id)sender {
    [UIView beginAnimations:nil context:nil]; // 动画开始
    [UIView setAnimationDuration:1.0]; // 动画时长
    self.scrollView.contentOffset = CGPointMake(0, self.scrollView.contentOffset.y);
    [UIView commitAnimations]; // 提交动画
}

- (IBAction)top:(id)sender {
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, 0) animated:YES];
}

- (IBAction)bottom:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        CGFloat offsetY = self.scrollView.contentSize.height - self.scrollView.frame.size.height;
        self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, offsetY);
    }];
}

- (IBAction)right:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        CGFloat offsetX = self.scrollView.contentSize.width - self.scrollView.frame.size.width;
        self.scrollView.contentOffset = CGPointMake(offsetX, self.scrollView.contentOffset.y);
    }];
}


@end
