//
//  Proxy.h
//  DesignPatterns
//
//  Created by heaven on 15/1/28.
//  Copyright (c) 2015年 Heaven. All rights reserved.
//

#import <Foundation/Foundation.h>


// 抽象主题类，可以是抽象类也可以是接口，是一个最普通的业务类型定义，无特殊要求。
@protocol Subject <NSObject>

// 定义一个方法
- (void)request;

@end


// 具体主题角色类，也叫被委托的角色、被代理的角色，它才是最重要的，是业务逻辑的具体执行者。
@interface RealSubject : NSObject <Subject>

@end


// 代理类
@interface Proxy : NSObject <Subject>

// 要代理哪个实现类
@property (nonatomic, strong) id <Subject> subject;

// 传递代理者
- (id)initWithObject:(id <Subject>)object;

@end