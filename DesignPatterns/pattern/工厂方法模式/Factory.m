//
//  Factory.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "Factory.h"


@implementation Car
+(id) car{
    return nil;
}
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

+(Car *) car{
    return [[BMWCar alloc] init];
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

+(Car *) car{
    return [[PorscheCar alloc] init];
}
@end

@implementation Factory
+(id) getProduct{
    return nil;
}
@end

@implementation BMWFactory

+(Car *) getProduct{
    Car *car = [BMWCar car];
    return car;
}

@end


@implementation PorscheFactory

+(Car *) getProduct{
    Car *car = [PorscheCar car];
    return car;
}

@end






