//
//  ViewController.m
//  UI001_WordColor
//
//  Created by 桂朝阳 on 16/7/12.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import "ViewController.h"

// XXXController:
//  负责管理一个大界面, 负责界面的创建和事件处理
//  一个界面, 交给一个Controller

#pragma mark 类扩展: 可以扩展属性和方法的声明
// 使用类扩展来存放私有属性
@interface ViewController ()

// 注释掉与控件连线的属性后, 未清理连线时报错:
// 'NSUnknownKeyException', reason: [<xxxController 0xnnnnnn> setValue:forUndefinedKey:]:this class is not key value coding-compliant for key xxx

// IBOutlet:
//  让属性具备连线的功能
@property(nonatomic, weak) IBOutlet UILabel *textLabel;

// 类扩展中方法的实现, 可以直接在原类文件.m中的@implementation中实现

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

// 注意:
//      在StoryBoard中, 要注意controller与.m文件的关联
//      一个按钮可以绑定多个方法
//      拷贝某个组件时, 注意处理其已绑定的事件
//      删除某个方法后, 注意处理控件的关联问题

// 被连接的方法被删除或注释, 而未处理连线问题时:
// unrecognized selector sent to instance

// IBAction:
//  本质就是void
//  能让方法具备连线的功能
#pragma mark 监听红色按钮
- (IBAction)redClick {
    NSLog(@"redClick");
    // 设置文字内容
    self.textLabel.text = @"我是红色文字";
    // 设置文字颜色
    self.textLabel.textColor = [UIColor redColor];
    // 设置文字字体
    self.textLabel.font = [UIFont systemFontOfSize: 20];
}

#pragma mark 监听蓝色按钮
- (IBAction)blueClick {
    NSLog(@"blueClick");
    self.textLabel.text = @"我是蓝色文字";
    self.textLabel.textColor = [UIColor blueColor];
    self.textLabel.font = [UIFont systemFontOfSize: 21];
}

#pragma mark 监听黄色按钮
- (IBAction)yellowClick {
    NSLog(@"yellowClick");
    self.textLabel.text = @"我是黄色文字";
    self.textLabel.textColor = [UIColor yellowColor];
    self.textLabel.font = [UIFont systemFontOfSize: 22];
}

@end
