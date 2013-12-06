//
//  AbstractFactory.h
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import <Foundation/Foundation.h>
 // NSNumber 抽象工厂
// 产品系列1
@interface Bulldozer : NSObject
// 产品接口
@property (nonatomic, copy) NSString *name;
@end

@interface GiantBulldozer : Bulldozer
@end

// 产品系列2
@interface Truck : NSObject
// 产品接口
@property (nonatomic, copy) NSString *name;
@end

@interface BigTruck : Truck
@end


// 抽象产品
@interface AbstractProduct : NSObject

@end
// 抽象工厂
@interface AbstractFactory : NSObject

+(AbstractProduct *) getGiantBulldozer;
+(AbstractProduct *) getBigTruck;

@end
