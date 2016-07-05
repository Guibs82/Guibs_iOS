//
//  main.m
//  OC058_NSCalendar
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date = [NSDate date];
        NSLog(@"%@", date);
//        日历类
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSLog(@"%@", calendar);
        
//        利用日历类对象从时间类对象中获取年月日等~
//        components: 需要获取的参数 [一般情况下, 如果一个函数接收的参数是一个枚举, 可以通过"|"链接多个枚举值]
        NSCalendarUnit type = NSCalendarUnitYear| NSCalendarUnitMonth| NSCalendarUnitDay;
        NSDateComponents *cmps = [calendar components:type fromDate:date];
        NSLog(@"year is %ld", cmps.year);
        NSLog(@"month is %ld", cmps.month);
        NSLog(@"day is %ld", cmps.day);
        
//        比较两个时间的差值, 相差多少年.月.日.秒...
//          时间1
        NSString *strDate = @"2009-08-02 08:02:00 +0000";
        NSDateFormatter *strFormatter = [[NSDateFormatter alloc] init];
        strFormatter.dateFormat = @"yyyy-MM-dd hh:mm:ss Z";
        NSDate *date1 = [strFormatter dateFromString:strDate];
        NSLog(@"%@", date1);
//          时间2
        NSDate *date2 = [NSDate date];
        NSLog(@"%@", date2);
//         创建Calendar对象用于比较时间
        NSCalendar *comCalender = [NSCalendar currentCalendar];
        NSCalendarUnit comType = NSCalendarUnitYear| NSCalendarUnitMonth| NSCalendarUnitDay;
        NSDateComponents *com = [comCalender components:comType fromDate:date1 toDate:date2 options:(0)];
        NSLog(@"year is %ld, month is %ld, day is %ld", com.year, com.month, com.day);
        
        
    }
    return 0;
}
