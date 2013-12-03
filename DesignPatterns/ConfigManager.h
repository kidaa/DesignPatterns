//
//  ConfigManager.h
//  DesignPatterns
//
//  Created by Heaven on 13-12-2.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#undef Screen_WIDTH
#define Screen_WIDTH   [[UIScreen mainScreen] bounds].size.width

#undef	NSLogD
#undef	NSLogDD
#define NSLogD(fmt, ...) {NSLog((@"%s [Line %d] DEBUG: \n" fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);}
#define NSLogDD NSLogD(@"%@", @"");


#import <Foundation/Foundation.h>

@interface ConfigManager : NSObject

+(UILabel *) getDescriptionLabelWithString:(NSString *)str;

@end
