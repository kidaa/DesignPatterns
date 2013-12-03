//
//  Factory.h
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Car : NSObject

@property (nonatomic, copy) NSString *name;

@end

@interface Factory : NSObject

+(id) getBMWCar;
+(id) getPorscheCar;

@end
