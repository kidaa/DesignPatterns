//
//  FactoryVC.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-3.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "FactoryVC.h"
#import "Factory.h"

@interface FactoryVC ()

@end

@implementation FactoryVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [ConfigManager getDescriptionLabelWithString:@"Define an interface for creating an object,but let subclass decide which class to instantiate.Factory Method lets a class defer instantiation to subclass.（定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法是一个类的实例化延迟到其子类。）"];
    [self.view addSubview:label];
   ////////////////////////////////////////////////////////////
    Car *car = [Factory getBMWCar];
    NSLogD(@"%@",car.name);
    Car *car2 = [Factory getPorscheCar];
    NSLogD(@"%@", car2.name);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
