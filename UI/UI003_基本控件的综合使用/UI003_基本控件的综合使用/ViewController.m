//
//  ViewController.m
//  UI003_基本控件的综合使用
//
//  Created by 桂朝阳 on 16/7/13.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 多个按钮绑定同一方法
- (IBAction)onClick:(UIButton *)sender {
    // 利用tag判断按钮
    if (sender.tag == 1) {
        NSLog(@"insert");
    } else {
        NSLog(@"remove");
    }
}

@end
