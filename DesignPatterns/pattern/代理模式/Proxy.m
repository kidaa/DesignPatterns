//
//  Proxy.m
//  DesignPatterns
//
//  Created by heaven on 15/1/28.
//  Copyright (c) 2015年 Heaven. All rights reserved.
//

#import "Proxy.h"

@implementation RealSubject

- (void)request
{
    NSLog(@"实现业务");
}

@end


@interface Proxy ()

// 预处理
- (void)before;
// 善后处理
- (void)after;

@end

@implementation Proxy

// 传递代理者
- (id)initWithObject:(id <Subject>)object
{
    self = [super init];
    if (self) {
        self.subject = object;
    }
    return self;
}

- (void)request
{
    [self before];
    [self.subject request];
    [self after];
}

// 预处理
- (void)before
{
    
    
}
// 善后处理
- (void)after
{
    
}
@end