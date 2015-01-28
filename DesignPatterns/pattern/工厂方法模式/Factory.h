//
//  Factory.h
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import <Foundation/Foundation.h>


// 产品
@interface Car : NSObject

@property (nonatomic, copy) NSString *name;

+ (Car *)car;
@end

@interface BMWCar : Car
@end

@interface PorscheCar : Car
@end




@interface Factory : NSObject
//工厂接口
+ (Car *)getProduct;
@end

// 工厂实现
@interface BMWFactory :Factory
@end

@interface PorscheFactory :Factory
@end





