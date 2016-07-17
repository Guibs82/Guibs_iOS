//
//  ViewController.m
//  UI006_UIScrollView代理
//
//  Created by Guibs on 16/7/17.
//  Copyright © 2016年 Guibs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"labixiaoxin"]];
    [self.scrollView addSubview:imageView];
    self.imageView = imageView;
    
    self.scrollView.backgroundColor = [UIColor grayColor];
    self.scrollView.contentSize = imageView.image.size;
    // 设置代理
    // ScrollView的代理需要遵守UIScrollViewDelegate
    self.scrollView.delegate = self;
    
    // 设置缩放比例
    self.scrollView.minimumZoomScale = 0.2;
    self.scrollView.maximumZoomScale = 2.0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UIScrollViewDelegate>

/// 滚动
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"----GT_DidScroll----");
}

/// 即将开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"----GT_BeginDragging----");
}

/// 结束拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"----GT_DidEndDragging----");
}

/// 减速滚动复原时 [弹簧效果的惯性滚动恢复边界时]
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"----GT_DidEndDecelerating----");
}

/// 缩放
/// 这个方法的返回值就是要缩放的内容
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    NSLog(@"----缩放ing, 当前比例%f----", scrollView.zoomScale);
}

@end
