//
//  ConfigManager.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-2.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "ConfigManager.h"

@implementation ConfigManager

+ (UILabel *)getDescriptionLabelWithString:(NSString *)str
{
    UILabel *label = [[UILabel alloc] init];
    label.text = str;
    label.frame = CGRectMake(10, 44, Screen_WIDTH - 20, 200);
    label.font = [UIFont systemFontOfSize:12];
    label.numberOfLines = 0;
    label.textColor = [UIColor blackColor];
    
    return label;
}
@end
