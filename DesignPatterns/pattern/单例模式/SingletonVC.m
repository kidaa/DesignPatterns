//
//  SingletonVC.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-2.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "SingletonVC.h"
#import "Earth.h"
@interface SingletonVC ()

@end

@implementation SingletonVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [Earth sharedInstance].land = 4;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [ConfigManager getDescriptionLabelWithString:@"Ensure a class has only one instance, and provide a global point of access to it.（确保某一个类只有一个实例，而且自行实例化并向整个系统提供这个实例。）"];
    [self.view addSubview:label];
////////////////////////////////////////////////////////////
    
    [Earth sharedInstance].land = 7;
    NSLogD(@"land:%d\niameter:%f", [Earth sharedInstance].land, [Earth sharedInstance].diameter);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
