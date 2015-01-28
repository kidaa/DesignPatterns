//
//  ProxyVC.m
//  DesignPatterns
//
//  Created by heaven on 15/1/28.
//  Copyright (c) 2015年 Heaven. All rights reserved.
//

#import "ProxyVC.h"
#import "Proxy.h"

@interface ProxyVC ()

@end

@implementation ProxyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [ConfigManager getDescriptionLabelWithString:@"为其他对象提供一个代理以控制对这个对象的访问"];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)demo
{
    // 生成一个xx
    RealSubject *subject = [[RealSubject alloc] init];
    
    // 生成一个代理类
    Proxy *proxy = [[Proxy alloc] initWithObject:subject];
    
    [proxy request];
    
}
@end
