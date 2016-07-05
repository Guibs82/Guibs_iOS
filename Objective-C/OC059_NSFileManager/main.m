//
//  main.m
//  OC059_NSFileManager
//
//  Created by 桂朝阳 on 16/7/5.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager]; // [单例]
//        1.判断一个文件/文件夹是否存在
        BOOL flag1 = [fm fileExistsAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager/main.m"];
        NSLog(@"是否存在: %i", flag1);
        
//        2.判断一个文件是否存在, 且是否是一个文件夹
//        注意: 该方法的返回值是返回传入的路径的文件/文件夹是否存在
//        第二个参数用于保存路径对应的是否是文件夹的结果
        BOOL isDic;
        BOOL flag2 = [fm fileExistsAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager/main.m" isDirectory:&isDic];
        NSLog(@"是否存在: %i, 是否是文件夹: %i", flag2, isDic);
        
//        3.获取文件/文件夹的属性
        NSDictionary *attrDic = [fm attributesOfItemAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager/main.m" error:nil];
        NSLog(@"%@", attrDic);
        
//        4.获取文件夹中的所有文件
//        注意: contentsOfDirectoryAtPath: 只能获取当前文件夹中所有的子文件/文件夹, 不能获取子文件夹中的文件
        NSArray *conArr1 = [fm contentsOfDirectoryAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager" error:nil];
        NSLog(@"contentsOfDirectoryAtPath: %@", conArr1);
        
        NSArray *conArr2 = [fm subpathsAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager"];
        NSLog(@"subpathsAtPath: %@", conArr2);
        
//        计算文件夹中文件大小
//        注意: 如果通过attributesOfItemAtPath: 方法直接获取, 获取的文件大小其实不准确, 必须拿到其中所有文件后, 累加每个文件的大小
        
//        5.创建文件夹
//        createDirectoryAtPath: 创建文件夹的位置
//        withIntermediateDirectories: 是否自动创建目录中不存在的文件夹
//        attributes: 指定创建文件夹的属性
//        error: 接收创建失败时的参数
        BOOL flag3 = [fm createDirectoryAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager/Guibs/Rio_G" withIntermediateDirectories:YES attributes:nil error:nil];
        NSLog(@"创建文件夹结果: %i", flag3);
        
//        6.创建文件
//        createFileAtPath: 路径
//        contents: 文件中的内容 [NSData二进制数据]
        NSData *content = [@"Guibs Fighting" dataUsingEncoding:NSUTF8StringEncoding];
        BOOL flag4 = [fm createFileAtPath:@"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC059_NSFileManager/Guibs/Rio_G/G.txt" contents:content attributes:nil];
        NSLog(@"创建文件夹结果: %i", flag4);
    }
    return 0;
}
