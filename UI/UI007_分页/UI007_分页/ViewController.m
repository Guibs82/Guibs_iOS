//
//  ViewController.m
//  UI007_分页
//
//  Created by Guibs on 16/7/17.
//  Copyright © 2016年 Guibs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int count = 5; // 图片数
    
    CGFloat w = self.scrollView.frame.size.width;
    CGFloat h = self.scrollView.frame.size.height;
    
    for (int i = 0; i < count; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"img_0%d", i]];
        imageView.frame =CGRectMake(i * w, 0, w, h);
        [self.scrollView addSubview:imageView];
    }
    
    CGFloat scrollViewWidth = count * w;
    self.scrollView.contentSize = CGSizeMake(scrollViewWidth, 0);
    self.scrollView.showsHorizontalScrollIndicator = YES;
    self.scrollView.pagingEnabled = YES; // 开启分页功能 --> 以scrollView的宽度作为一页
    self.scrollView.delegate = self;
    
    // 分页标识符
    self.pageControl.numberOfPages = count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    // 通过监测scrollView的偏移量, 计算pageControl的当前页
    int page = (int)(scrollView.contentOffset.x / scrollView.frame.size.width + 0.5);
    self.pageControl.currentPage = page;
}

@end
