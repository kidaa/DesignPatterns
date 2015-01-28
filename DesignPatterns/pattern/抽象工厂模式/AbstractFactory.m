//
//  AbstractFactory.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "AbstractFactory.h"

@implementation Bulldozer

@end

@implementation GiantBulldozer : Bulldozer

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"Giant";
    }
    return self;
}
@end

@implementation Truck

@end

@implementation BigTruck

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"BIG";
    }
    return self;
}

@end

@implementation AbstractFactory

+ (id)getGiantBulldozer
{
    GiantBulldozer *bulldozer = [[GiantBulldozer alloc] init];
    return bulldozer;
}

+ (id)getBigTruck
{
    BigTruck *car = [[BigTruck alloc] init];
    return car;
}
@end
