//
//  ViewController.m
//  DesignPatterns
//
//  Created by Heaven on 13-12-2.
//  Copyright (c) 2013年 Heaven. All rights reserved.
//

#import "ViewController.h"
#import "UITableVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickGo:(id)sender {
    
    UITableVC *vc1 = [[UITableVC alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc1];
    [UIApplication sharedApplication].delegate.window.rootViewController = nvc;
}
@end
