//
//  Person.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/6/24.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    实例变量修饰符
    作用域: 从出现的位置开始, 直到下一个修饰符出现. 如果没有遇到下一个修饰符, 就会修饰后面所有的实例变量
 
    @public:
        可以在其他类中访问被@public修饰的成员变量
        可以在本类中访问被@public修饰的成员变量
        可以在子类中访问父类中被@public修饰的成员变量
    @private:
        不可以在其他类中访问被@private修饰的成员变量
        可以在本类中访问被@private修饰的成员变量
        不可以在子类中访问父类中被@private修饰的成员变量
    @protected [默认]
        不可以在其他类中访问被@protected修饰的成员变量
        可以在本类中访问被@protected修饰的成员变量
        可以在子类中访问父类中被@protected修饰的成员变量
    @package
        介于@public和@private之间
        如果在其他包中访问, 就是@private.
        如果是在当前代码所在包中访问, 就是@public
        可以在子类中访问父类中被@package修饰的成员变量
 */

@interface Person : NSObject
{
    @public
    int _age;
    @private
    NSString *name;
}

@end
