//
//  Earth.h
//  DesignPatterns
//
//  Created by Heaven on 13-12-2.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Earth : NSObject
+ (Earth *)sharedInstance;

@property (nonatomic, assign) float diameter;
@property (nonatomic, assign) int land;


@end
