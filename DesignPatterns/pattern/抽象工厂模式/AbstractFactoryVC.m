//
//  AbstractFactoryVC.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "AbstractFactoryVC.h"

@interface AbstractFactoryVC ()

@end

@implementation AbstractFactoryVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel *label = [ConfigManager getDescriptionLabelWithString:@"Provide an interface for creating families of related or dependent objects without specifying their concrete classes.（为创建一组相关或相互依赖的对象提供一个接口，而且无需指定它们的具体类。）"];
    [self.view addSubview:label];
    ////////////////////////////////////////////////////////////
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
