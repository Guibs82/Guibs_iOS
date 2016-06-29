//
//  main.m
//  OC030_SEL
//
//  Created by 桂朝阳 on 16/6/30.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
            SEL第一次匹配会逐个匹配, 匹配成功后, 再次使用时, 会在缓存中直接使用
         */
//        SEL作用:
//        1.配合对象/类, 来检查对象/类中是否实现了某个方法
        SEL sel1 = @selector(setAge:);
        SEL sel2 = @selector(test);
        
        Person *p = [Person new];
        // respondsToSelector 用于判断某个对象是否具有 -/+XXX 方法  [返回YES/NO]
        BOOL b1 = [p respondsToSelector:sel1]; // 检测p是否拥有-setaAge: 方法  (YES)
        BOOL b2 = [p respondsToSelector:sel2]; // 检测p是否拥有-test 方法  (NO)
        BOOL b3 = [Person respondsToSelector:sel2]; // 检测p是否拥有+test 方法  (YES)
        
        NSLog(@"flag is %i", b1);
        NSLog(@"flag is %i", b2);
        NSLog(@"flag is %i", b3);
        
        // respondsToSelector注意点:
//          如果通过一个对象调用, 会判断该对象是否具有 -XXX 方法
//          如果通过一个类调用, 会判断该对象是否具有 +XXX 方法
        
//        SEL作用:
//        2.配合对象/类调用SEL方法
        SEL sel3 = @selector(demo);
        Person *p2 = [Person new];
        // 调用p对象中的demo
        [p2 performSelector:sel3];
        
        SEL sel4 = @selector(signalWithNumber:);
        // withObject: 要传入的参数
        // 注意: 如果通过performSelector调用有参数的方法, 则参数必须是对象类型. 因为withObject只能接收参数
        [p2 performSelector:sel4 withObject:@"123456"];
        
        SEL sel5 = @selector(signalWithNumber:andContent:);
        // performSelector调用的方法, 最多支持两个参数
        [p2 performSelector:sel5 withObject:@"123123" withObject:@"Fighting"];
        
//        SEL作用:
//        2.配合对象将SEL作为方法的形参
        Car *c = [Car new];
        SEL cSel = @selector(run);
        
        Person *pc = [Person new];
        [p makeObject:c andSel:cSel];
        
    }
    return 0;
}
