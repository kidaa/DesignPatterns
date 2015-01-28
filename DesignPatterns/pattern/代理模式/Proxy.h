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

// 被代理者
@property (nonatomic, strong) id <Subject> subject;

// 传递代理者
- (id)initWithObject:(id <Subject>)object;

@end



/*
 优点
 1.       职责清晰   真实的角色就是实现的业务逻辑，不用关心其他非本指责的事务
 2.       高扩展性   具体主题角色不能怎么变化，只要它实现了接口，代理类完全可以在不做任何修改的情况下使用
 3.       智能化     动态代理是最好的体现，即在运行阶段才指定实际代理对象(Struts如何把表单元素映射到对象上?)
 使用场景   典型应用如Spring AOP
 扩展
 1.       普通代理    要求客户端只能访问代理角色，而不能访问真实角色
 2.       强制代理    要求客户端必须通过真实角色找到代理角色(演员和经纪人)
 3.       虚拟代理    指在需要的时候，才初始化主题对象,可以避免被代理对象太多而引起的初始化缓慢问题
*/