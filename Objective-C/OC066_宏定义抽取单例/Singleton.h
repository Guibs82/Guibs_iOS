//
//  Singleton.h
//  Objective-C
//
//  Created by 桂朝阳 on 16/7/6.
//  Copyright © 2016年 NexTed. All rights reserved.
//

#ifndef Singleton_h
#define Singleton_h

// 使用interfaceSingleton()来替代后面的方法声明
#define interfaceSingleton(name)  +(instancetype)share##name


#if __has_feature(objc_arc) // 判断是否是ARC

// ARC
#define implementationSingleton(name)  \
static name *_instance = nil; \
+ (instancetype)share##name \
{ \
name *instance = [[self alloc] init]; \
return instance; \
} \
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[super allocWithZone:zone] init]; \
}); \
return _instance; \
} \
- (id)copyWithZone:(NSZone *)zone{ \
return _instance; \
} \
- (id)mutableCopyWithZone:(NSZone *)zone \
{ \
return _instance; \
}

#else

// MRC
#define implementationSingleton(name)  \
static name *_instance = nil; \
+ (instancetype)share##name \
{ \
name *instance = [[self alloc] init]; \
return instance; \
} \
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[super allocWithZone:zone] init]; \
}); \
return _instance; \
} \
- (id)copyWithZone:(NSZone *)zone{ \
return _instance; \
} \
- (id)mutableCopyWithZone:(NSZone *)zone \
{ \
return _instance; \
} \
- (oneway void)release \
{ \
} \
- (instancetype)retain \
{ \
return _instance; \
} \
- (NSUInteger)retainCount \
{ \
return  MAXFLOAT; \
}

#endif

#endif /* Singleton_h */
