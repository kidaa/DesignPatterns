//
//  AbstractFactory.h
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bulldozer : NSObject

@property (nonatomic, copy) NSString *name;

@end

@interface GiantBulldozer : Bulldozer

@end

@interface Truck : NSObject

@property (nonatomic, copy) NSString *name;

@end

@interface BigTruck : Truck

@end

@interface AbstractFactory : NSObject

+(id) getGiantBulldozer;

+(id) getBigTruck;

@end
