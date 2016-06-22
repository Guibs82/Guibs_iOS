//
//  main.m
//  OC006_ObjectForMethod
//
//  Created by 桂朝阳 on 16/6/22.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Soldier.h"
#import "Shop.h"

/*
    士兵(Soldier):
    属性: 姓名(name) 身高(height) 体重(weight)
    方法: 打枪(fire) 打电话
    
    抢(Gun):
    属性: 弹夹(clip), 型号(model)
    方法: 上弹夹
 
    弹夹(Clip):
    属性: 子弹(Bullet)
    方法: 上子弹(addBullet)
 */


#pragma mark 程序入口
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 1.创建士兵
        Soldier *s = [Soldier new];
        s -> _name = @"Guibs";
        s -> _height = 185;
        s -> _weight = 90;
        
        // 2.买一把枪
        Shop *shop = [Shop new];
        Gun *g = [shop buyGun:100];
        
        // 3.买弹夹
        Clip *c = [shop buyClip:100];
        
        g -> clip = c;
        
        // 3.让士兵开枪 [将对象作为参数传递] (Gun *gun = g)
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];
        [s fire:g withClip:c];


    }
    return 0;
}
