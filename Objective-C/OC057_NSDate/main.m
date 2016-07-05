//
//  main.m
//  OC057_NSDate
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        1.NSDate的创建和基本使用
//        只要是通过NSDate创建的对象, 对象中就保存了当前时间
        NSDate *now = [NSDate date]; // 0区区时
        NSLog(@"%@", now);
//        在Date的基础上追加多少秒
        NSData *date = [now dateByAddingTimeInterval:100];
        NSLog(@"%@", date);
        
//        2-1.获取当前所在时区
        NSTimeZone *zone = [NSTimeZone systemTimeZone]; // 或localTimeZone
//        2-2.获取当前时区和0时区的时间差
        NSInteger seconds = [zone secondsFromGMT];
        NSLog(@"%ld", seconds);
//        2-3.计算当前时区的时间
        NSDate *localDate = [now dateByAddingTimeInterval:seconds];
        NSLog(@"%@", localDate);
        
//        3.格式化输出
//        3-1.创建一个时间格式化对象
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        3-2.告诉时间输出格式
//        yyyy: 年
//        MM:   月
//        dd:   日
//        HH:   24小时
//        hh:   12小时
//        mm:   分
//        ss:   秒
//        Z:    时区
        formatter.dateFormat = @"yyyy年MM月dd日 hh-mm-ss Z时区";
//        3-2.利用时间格式化对象对时间格式化
        NSString *dateStr = [formatter stringFromDate:now];
        NSLog(@"%@", dateStr);
        
//        4.NSString --> NSDate
//        注意: 字符串中的时间格式, 必须要与formatter 中的时间格式一致
        NSString *strDate = @"2016-08-02 08:02:00 +0000";
        NSDateFormatter *strFormatter = [[NSDateFormatter alloc] init];
        strFormatter.dateFormat = @"yyyy-MM-dd hh:mm:ss Z";
        NSDate *dByStr = [strFormatter dateFromString:strDate];
        NSLog(@"%@", dByStr);
        
    }
    return 0;
}
