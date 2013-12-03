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

@implementation Factory

+(id) getBMWCar{
    Car *car = [[Car alloc] init];
    car.name = @"BMW";
    return car;
}

+(id) getPorscheCar{
    Car *car = [[Car alloc] init];
    car.name = @"Porsche";
    return car;
}
@end
