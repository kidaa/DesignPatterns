//
//  Earth.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-2.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "Earth.h"

@implementation Earth
+ (Earth *)sharedInstance
{
    static dispatch_once_t once;
    static Earth * __singleton__;
    dispatch_once( &once, ^{ __singleton__ = [[Earth alloc] init]; } );
    return __singleton__;
}
- (id)init
{
    self = [super init];
    if (self) {
        self.diameter = 12742;
    }
    return self;
}
@end
