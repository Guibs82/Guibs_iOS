//
//  main.m
//  OC001_ClassAndObject
//
//  Created by 桂朝阳 on 16/6/21.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    kIColorBlack,
    kIColorWhite,
    kIColorGold
} IColor;

/*
    事物名称: iPhone
    属性: 颜色, 型号, cpu, 尺寸 --> 成员变量
    行为: 打电话, 发短信, 上网, 获取本机信息 --> 成员方法
 
    OC 中定义一个类也分为声明和实现
 */

// 1.类的声明
// 以@interface 开头, 以@end 结尾, 然后再class name 对应的地方写上 事物名称 (首字母大写)
// 声明一个类的目的, 就是为了告诉系统, 我们这个类中有哪些属性和行为
@interface OBJ_iPhone : NSObject

// OC 类声明中的属性, 只能写在@interface 和@end 之间的 {} 中
// 注意: 建议将OC 类中所有的属性前, 都加一个_
// : NSObject 让类具备创建对象的能力

// 属性
{
    @public // 让类中的属性公开, 就可以使用指针操作对象中的属性
    float _model; // 型号
    int _cpu; // cpu
    double _size; // 尺寸
    int _color; // 颜色
}

// 行为(方法)
// OC 中的行为和C 语言中的函数一样, 都是保存一段特定功能的代码
// OC 中方法的声明写在@interface 中, 实现写在@implementation 中
// 注意: OC 中的方法, 如果没有形参, 不需要写(), 而是直接写;
//  因为: OC 方法中的(), 有特殊用途. 是用来括住数据类型的
// OC 中的方法, 也分为两类: 类方法 和 对象方法
//  类方法: 只能用类名调用    (用 + 表示)
//  对象方法: 只能用对象调用   (用 - 表示)

/*    类方法和对象方法的区别:
        1.对象方法必须由对象调用, 类方法必须由类调用
        2.对象方法可以直接访问属性, 类方法中不可以直接访问属性
        3.调用类方法的效率, 比调用对象方法的效率高
        4.类方法和对象方法可以相互调用
         4.1对象方法中可以直接调用类方法
         4.2类方法可以间接调用对象方法[创建对象后调用](不推荐)
         4.3类方法中可以调用类方法
         4.4对象方法中可以调用对象方法
        5.对象方法 - 类方法 +
 */

// 1.无返回值无参数
- (void)about;

// 2.有返回值没参数
- (char *)loadMessage;

// 3.有返回值有参数
//    OC 中的方法如果有参数, 每个参数的数据类型前必须加:
// 注意: 当前方法名称为 signal:     [: 也是方法的名称中的一部分]
- (int)signal: (int)number;
- (int)sendMessageWith: (int)number: (char *)content;
// OC 允许给每一个参数添加一个标签表达含义 [标签也是方法名的一部分]
- (int)sendMessageWithNumber: (int)number andContent: (char *)content;

// 4.无返回值无参数
- (void)say: (char *)content toSomeone: (char *)name;


// 类方法:
+ (int)sumWithValue1: (int)number1 andValue2: (int)number2;



+ (NSString *)colorWithNumber: (IColor)number;

@end



// 2.类的实现
//以@implementation 开头, 以@end 结尾, 在class 对应的地方写上声明时声明的类名
@implementation OBJ_iPhone

// 行为(方法)的实现

// 1.无返回值无参数
- (void)about {
    NSString *colorName = [OBJ_iPhone colorWithNumber: _color];
    //        如果想在对象方法中访问对象的属性, 直接 _属性名 即可
    NSLog(@"对象方法: The iPhone's model = %.1f, cpu = %i, size = %.1f, color = %@", _model, _cpu, _size, colorName);
//     对象方法中调用类方法
    NSLog(@"sum 1 & 3 is %i", [OBJ_iPhone sumWithValue1:1 andValue2:3]);
}

// 2.有返回值没参数
- (char *)loadMessage {
    return "No Chinese";
}

// 3-1.有返回值有参数
- (int)signal: (int)number {
    return number;
}
- (int)sendMessageWith: (int)number: (char *)content {
    NSLog(@"Send message \"%s\" to %i", content, number);
    return 1;
}

// 3-2.多参数带标签
- (int)sendMessageWithNumber: (int)number andContent:(char *)content {
    NSLog(@"Send message \"%s\" to %i", content, number);
    return 1;
}

//4.没返回值有参数
- (void)say: (char *)content toSomeone: (char *)name {
    NSLog(@"To %s, %s", name, content);
}


// 类方法
// 如果不希望每次使用方法时, 都开辟存储空间, 且该方法中没有使用到类的属性, 就可以考虑将此方法定义为类方法
+ (int)sumWithValue1: (int)number1 andValue2: (int)number2 {
    OBJ_iPhone *iPhone = [OBJ_iPhone new];
    [iPhone say:"I used obj_method" toSomeone:"Guibs"];
    return number1 + number2;
}


+ (NSString *)colorWithNumber: (IColor)number {
    NSString *colorName;
    switch (number) {
        case 0:
            colorName = @"black";
            break;
        case 1:
            colorName = @"white";
            break;
        case 2:
            colorName = @"gold";
            break;
        default:
            colorName = @"no color";
            break;
    }
    return colorName;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        如何通过一个类来创建一个对象
//        在OC 中想要通过一个类来创建一个对象, 必须给类发送一个消息(好比C 语言中调用方法)
//        如何发送消息? 在OC 中只要想发送消息, 就要写上[类名称/对象名称 方法名称]
//        发送什么消息(调用什么方法)可以创建一个对象? new
        /*
            只要通过一个类调用new 方法, 也就是给类发送一个new 消息之后, 系统就会做三件事情:
            1.为类创建出来的对象分配存储空间(在堆内存中--需要手动释放[ARC机制自动释放])
            2.初始化类创建出来的对象中的属性
            3.返回类创建出来的对象对应的地址
         */
//        So, 通过一个对应类的类型的指针接收这个对象的存储地址
//        如果用某个对象的指针保存了这个对象的地址, 则成这个指针为某个类型的对象
        OBJ_iPhone *iPhone = [OBJ_iPhone new];
        OBJ_iPhone *iPhone2 = [[OBJ_iPhone alloc] init];
//        OC 中的类其本质就是一个结构体, 所以p 这个指针其实就是指向了一个结构体
        iPhone -> _model = 6;
        iPhone -> _cpu = 7;
        iPhone -> _size = 5.5;
        iPhone -> _color = kIColorGold;
        
//        调用iPhone 对象中的about 方法[给对象发消息]
        [iPhone about];
        
//        OC 的NSLog 对C语言字符串支持的不是太好, 可能显示乱码或不输出
        char *content = [iPhone loadMessage];
        NSLog(@"%s", content);
        
        int number = [iPhone signal:10086];
        NSLog(@"tel-number is %i", number);
        
        int result = [iPhone sendMessageWith:10086 :"Hello Guibs"];
        NSLog(@"send result is %i", result);
        
        int result2 = [iPhone sendMessageWithNumber:10086 andContent:"Hello Guibs!"];
        NSLog(@"send result is %i", result2);
        
        [iPhone say:"Fighting!" toSomeone:"Guibs"];
        
        int sumResult = [OBJ_iPhone sumWithValue1:1 andValue2:2];
        NSLog(@"The result of 1 & 2 is %i", sumResult);
        
        NSLog(@"The iPhone's model = %.1f, cpu = %i, size = %.1f, color = %i", iPhone -> _model, iPhone -> _cpu, iPhone -> _size, iPhone -> _color);
        
    }
    return 0;
}
