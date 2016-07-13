//
//  ViewController.m
//  UI002_UIView简介
//
//  Created by 桂朝阳 on 16/7/13.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

// 控制器的view加载完毕时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // frame: 控件矩形框在父控件中的位置和尺寸(以父控件的左上角为坐标原点)[CGRect](origin.x origin.y size.height size.width)
    NSLog(@"%f", self.label.frame.origin.x);
    NSLog(@"%f", self.label.frame.origin.y);
    NSLog(@"%f", self.label.frame.size.height);
    NSLog(@"%f", self.label.frame.size.width);
    
    // bounds: 控件矩形框的位置和尺寸(以自己左上角为坐标原点, 所以bounds的x, y一般为0)
    // 获取位置时, 不使用bounds
    NSLog(@"%f", self.label.bounds.origin.x);
    NSLog(@"%f", self.label.bounds.origin.y);
    NSLog(@"%f", self.label.bounds.size.height);
    NSLog(@"%f", self.label.bounds.size.width);
    
    // center: 控件中心店的位置(以父控件的左上角为坐标原点)
    NSLog(@"%f", self.label.center.x);
    NSLog(@"%f", self.label.center.x);
    
    NSLog(@"%@", self.view);
    NSLog(@"%@", self.label.superview);
    
    // 子控件输出顺序, 与添加顺序相同(storyboard左侧顺序)
    NSLog(@"%@", self.view.subviews);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
    // 点击按钮, 添加新的控件
    UISwitch *s = [[UISwitch alloc] init];
    [self.view addSubview:s];
    
    UIStepper *sp = [[UIStepper alloc] init];
    [self.view insertSubview:sp atIndex:0]; // 在指定层级插入控件[0是最下方]
    
    // 删除某个控件
        // 删除属性化的控件
    [self.label removeFromSuperview];
        // 删除根据tag查询到的控件
            // viewWithTag会先判断自己是否满足tag, 若是, 则返回自己. 若不是, 当多个控件的tag相同时, viewWithTag会返回按添加顺序找到的第一个控件
    [[self.view viewWithTag:1] removeFromSuperview];
    
    // 代码创建控件
    UIView *tempView = [[UIView alloc] init];
    tempView.backgroundColor = [UIColor purpleColor];
    tempView.frame = CGRectMake(20, 20, 100, 100);
    [self.view addSubview:tempView];
    
}

@end
