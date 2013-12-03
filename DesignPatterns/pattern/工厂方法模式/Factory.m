//
//  Factory.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "Factory.h"


@implementation Car

@end

@implementation BMWCar : Car
- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"BMW";
    }
    return self;
}
@end

@implementation PorscheCar : Car
- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"Porsche";
    }
    return self;
}
@end

@implementation Factory

+(id) getBMWCar{
    BMWCar *car = [[BMWCar alloc] init];
    return car;
}

+(id) getPorscheCar{
    PorscheCar *car = [[PorscheCar alloc] init];
    return car;
}
@end
