//
//  main.m
//  OC048_NSString
//
//  Created by 桂朝阳 on 16/7/3.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 如何创建字符串对象
//        通过不同方式创建的字符串, 存储位置也不同
//        不同平台存储方式不同
//        不同编译器存储方式也不同
        
//        1.通过字符串常量创建 [字符串存储在常量区] [多次创建同一字符串常量的多个对象, 则指向同一存储空间]
        NSString *str11 = @"guibs";
        NSString *str12 = @"guibs";
        
        NSLog(@"%p", str11); // 0x100001048
        NSLog(@"%p", str12); // 0x100001048
        
//        2.通过alloc init 创建 [字符串存储在堆区] [Xcode 6以下, iOS平台每次alloc都会创建一个新对象, Xcode 6以上, 多次alloc指向同一块存储空间]
        NSString *str21 = [[NSString alloc] initWithFormat:@"guibs"];
        NSString *str22 = [[NSString alloc] initWithFormat:@"guibs"];
        
        // Mac平台会自动对字符串优化, 因此str21和str22的地址相同. iOS平台下, 则不同
        NSLog(@"%p", str21); // 0x736269756755(Mac)
        NSLog(@"%p", str22); // 0x736269756755(Mac)
        
//        3.通过工厂方法创建stringWithFormate [字符串存储在堆区]
        // 内部其实封装了alloc init
        NSString *str31 = [NSString stringWithFormat:@"guibs"];
        NSString *str32 = [NSString stringWithFormat:@"guibs"];
        
        NSLog(@"%p", str31); // 0x736269756755(Mac)
        NSLog(@"%p", str32); // 0x736269756755(Mac)
        
//        4.initWithString
        /*
            注意: 一般情况下, 通过alloc或者类工厂方法创建对象, 每次都会在堆内存中开辟一块存储空间, 但是通过alloc initWithString方法除外, 这个方法是通过copy返回一个字符串
            copy分为
                深copy: 创建新的对象
                浅copy: 不创建新对象, 返回被copy的对象地址
                initWithString是浅copy, 因此不论什么编译器和平台, 都是同一存储空间
         */
        NSString *str41 = [[NSString alloc] initWithString:@"guibs"];
        NSString *str42 = [[NSString alloc] initWithString:@"guibs"];

        NSLog(@"%p", str41); // 0x100001048
        NSLog(@"%p", str42); // 0x100001048
        
//        5.从文件中读取字符串
        /*
            file: 文件路径
            encoding: 文件编码
            error: 如果报错, 会将错误信息保存到error中, 如果没报错, 则error为nil
            注意: 在OC中, 但凡看到XXXofFile, 就是传入绝对路径
         */
        NSString *path = @"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC048_NSString/Hello.txt";
        NSError *error = nil;
        NSString *str5 = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error]; // 传入error对象的地址
        if (error == nil) {
            NSLog(@"%@", str5);
        } else {
            NSLog(@"error = %@", [error localizedDescription]); // localizedDescription 返回具体描述
        }
        
//        6.将字符串写入文件
        /*
            atomically: 
                YES: 如果在字符串写入过程中, 字符串没有写完, 则不会传入文件
                NO:  如果在字符串写入过程中, 字符串没有写完, 也会传入文件
         */
        NSString *str6 = @"Fihgting Guibs";
        NSString *pathToWrite = @"/Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC048_NSString/WriteFile.txt";
        BOOL writeResult = [str6 writeToFile:pathToWrite atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        if (error == nil) {
            NSLog(@"写入结果: %i", writeResult);
        }
        
//        7. 将字符串写入文件(URL)
        /*
            URL == 协议头://主机域名(服务器名称/IP地址)/路径
            http:// https://   [超文本传输协议, 网络资源]
            ftp://             [文件传输协议]
            file://            [本地电脑文件]
         
            注意: 如果加载的资源是本机资源, 则主机地址可以省略(localhost/), 但是文件路径中, 最前面的/ 不可以省略, 因为那个/代表根路径
         
            注意: 如果是通过NSURL的fileURLWithPath创建的URL, 则系统会自动为我们添加协议头[file://], 所以不需要再写file://
         
            在开发中, 一般情况下, 如果是访问本机资源, 建议使用fileURLWithPath创建URL, 因为URL不支持中文, 如果URL中包含中文, 则不支持访问. 而fileURLWithPath可以解决这个问题, 似的包含中文的路径, 也可以处理为可以访问的URL
         
            如果不想使用fileURLWithPath, 对包含中文的路径可以使用stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding处理
         */
        
        NSString *str7 = @"Fighting Guibs by URL";
        NSString *pathToWriteURL = @"file:///Users/guizhaoyang/GitHub/Guibs_iOS/Objective-C/OC048_NSString/新文件/UrlFIle.txt";
        pathToWriteURL = [pathToWriteURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//        NSURL *url = [NSURL fileURLWithPath:pathToWriteURL];
        NSURL *url = [NSURL URLWithString:pathToWriteURL];
        
        BOOL writeResultByURL = [str7 writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        NSString *str8 = @"New URL file content";
        writeResultByURL = [str8 writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:&error]; // 会覆盖
        
        if (error == nil) {
            NSLog(@"写入结果: %i", writeResultByURL);
        }
        
//        8.比较字符串内容是否相等
        NSString *str81 = @"Guibs";
        NSString *str82 = @"guibs";
        
        // isEqualToString 内容相等: 1 内容不相等: 0
        BOOL equalResult1 = [str81 isEqualToString:str82];
        NSLog(@"%i", equalResult1);
        
        // == 地址相同: 1 地址不相同: 0
        BOOL equalResult2 = (str81 == str82);
        NSLog(@"%i", equalResult2);
        
//        9.比较字符串大小
//        [str1 compare:str2]逐个元素取出, 出非等结果即短路
//        NSOrderedAscending  前面小于后面
//        NSOrderedSame       前后相等
//        NSOrderedDescending 前面大于后面
        ;
        switch ([str81 compare:str82]) {
            case NSOrderedAscending:
                NSLog(@"str1 < str2");
                break;
            case NSOrderedSame:
                NSLog(@"str1 = str2");
                break;
            case NSOrderedDescending:
                NSLog(@"str1 > str2");
                break;
            default:
                break;
        }
        
//        10.忽略大小写的比较
//        [str1 caseInsensitiveCompare:str2]
        switch ([str81 caseInsensitiveCompare:str82]) {
            case NSOrderedAscending:
                NSLog(@"str1 < str2");
                break;
            case NSOrderedSame:
                NSLog(@"str1 = str2");
                break;
            case NSOrderedDescending:
                NSLog(@"str1 > str2");
                break;
            default:
                break;
        }
        
//        11.字符串搜索
        NSString *str9 = @"https://www.nexted.com";
//        11-1前缀: hasPrefix:
//        本质就是从字符串的第一个字符开始匹配, 不同就返回NO
        if ([str9 hasPrefix:@"https://"]) {
            NSLog(@"str9 is a URL");
        }
//        11-2后缀: hasSuffix:
//        本质就是从字符串的最后一个字符开始匹配, 不同就返回NO
        if ([str9 hasSuffix:@"com"]) {
            NSLog(@"str9 is ended by .com");
        }
//        11-3包含: rangeOfString:
//        从左至右的查找, 只要str中包含某个字符串, 就会返回其起始位置和该被包含字符串长度 [location和length作为NSRange结构体返回]
//        location从0开始, length从1开始
//        如果str中没有要查找的字符串, 那么返回的range的length = 0, location = NSNotFount
        NSRange range1 = [str9 rangeOfString:@"nexted"];

        if (range1.location == NSNotFound) {
            NSLog(@"字符串中找不到你要查询的字段");
        } else {
            NSLog(@"location = %lu, length = %lu", range1.location, range1.length);
        }
        
//        12.截取字符串
//        substringWithRange:NSRange 根据结构体NSRange截取字符串, 并返回一个新字符串对象存储截取内容
//        PS: OC中的结构体一般都可以使用NSMakeXXX来生成
        NSString *str10 = @"<name>Guibs<name>";
        // NSRange: location length [结构体]
//        NSRange range2 = {6, 5};
        NSRange range2 = NSMakeRange(6, 5);
        NSString *subSResult = [str10 substringWithRange:range2];
        NSLog(@"New string is %@", subSResult);
//        动态截取起始位置
        NSUInteger startLocation = [str10 rangeOfString:@">"].location + 1;
//        动态截取要截取的字符串长度
        NSUInteger length = [str10 rangeOfString:@"<" options:NSBackwardsSearch].location - startLocation;
        NSLog(@"startLocation is %lu, length is %lu", startLocation, length);
//        从某个位置开始截取到最后
//        substringFromIndex:
        NSString *sstr1 = [str10 substringFromIndex:6];
        NSLog(@"new string is %@", sstr1);
//        从开头截取到某个位置
//        substringToIndex:
        NSString *sstr2 = [str10 substringToIndex:6];
        NSLog(@"new string is %@", sstr2);

//        13.字符串替换
//        stringByReplacingOccurrencesOfString:str1(要替换谁) withString:str2(用谁替换)
        NSString *strX1 = @"I Love YM";
        NSString *strX12 = [strX1 stringByReplacingOccurrencesOfString:@"YM" withString:@"AX"];
        NSLog(@"%@", strX12);
        
//        14.替换首尾数据
//        stringByTrimmingCharactersInSet:NSCharacterSet
//        14-1.去除首尾空格
        NSString *strX2 = @"   Guibs  Fighting   ";
        NSString *strX22 = [strX2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        NSLog(@"new strX22 is %@", strX22);
//        14-2.去除首尾大写字符
        NSString *strX23 = [strX22 stringByTrimmingCharactersInSet:[NSCharacterSet uppercaseLetterCharacterSet]];
        NSLog(@"new strX22 is %@", strX23);
        
//        15.路径
//        15-1.判断是否绝对路径
//        本质就是判断字符串是否以/开头
        NSString *strX3 = @"/User/Guibs/HelloOC";
        BOOL absP = [strX3 isAbsolutePath];
        if (absP) {
            NSLog(@"是绝对路径");
        } else {
            NSLog(@"不是绝对路径");
        }
//        15-2.获取文件路径的最后一个目录
//        本质就是获取路径中, 最有一个/后的内容
        NSString *lastDic = [strX3 lastPathComponent];
        NSLog(@"%@", lastDic);
//        15-3.删除件路径的最后一个目录
//        本质就是删除最后一个/及后面的内容
        NSString *delDic = [strX3 stringByDeletingLastPathComponent];
        NSLog(@"%@", delDic);
//        15-4.给文件路径新加一个目录
//        本质就是在路径的最后添加一个/和追加的内容
//          如果最后已存在/, 则不会添加/
//          如果存在多个/, 会自动删除多余的/
        NSString *newPath = [strX3 stringByAppendingPathComponent:@"iOS.jpg"];
        NSLog(@"%@", newPath);
//        15-5.获取文件扩展名
//        本质就是从末尾开始查找. 截取第一个.到结尾的内容
        NSString *houzhui = [newPath pathExtension];
        NSLog(@"%@", houzhui);
//        15-6.删除路径中的扩展名
//        本质就是从末尾开始查找. 删除第一个. 和其后面的内容
        NSString *noHouZhui = [newPath stringByDeletingPathExtension];
        NSLog(@"%@", noHouZhui);
//        15-7.给路径添加一个扩展名
//        本质就是在末尾添加一个.和指定的内容
        NSString *addHouZhui = [newPath stringByAppendingPathExtension:@"gbs"];
        NSLog(@"%@", addHouZhui);
        
//        16.字符串转大写
        NSString *upper = [newPath uppercaseString];
        NSLog(@"%@", upper);
        
//        17.字符串转小写
        NSString *lower = [newPath lowercaseString];
        NSLog(@"%@", lower);
        
//        18.字符串首字母大写[左起遇到的第一个字母转为大写]
        NSString *startUpper = [lower capitalizedString];
        NSLog(@"%@", startUpper);
        
//        19.字符串和基本类型的转换
//        注意: 如果不是int float BOOL等可转换的类型, 则一定不能使用
        NSString *strNum = @"123";
        int num = [strNum intValue];
        NSLog(@"%i", num);
        
//        20.OC字符串和C语言字符串
        char *cStr = "Guibs";
        NSString *ocStr = [NSString stringWithUTF8String:cStr];
        NSLog(@"%@", ocStr);
        const char *cStr2 = [ocStr UTF8String];
        printf("%s", cStr2);
        
//        21.字符串长度(内容)
        NSLog(@"%lu", (unsigned long)ocStr.length);
        
//        22.指定位置的字符
        NSLog(@"%c", [ocStr characterAtIndex:2]);
    }
    return 0;
}
