//
//  MQViewController.m
//  MQExtension
//
//  Created by MQTwist on 03/03/2022.
//  Copyright (c) 2022 MQTwist. All rights reserved.
//

#import "MQViewController.h"
#import <UIColor+Extension.h>

@interface MQViewController ()

@end

@implementation MQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self MQ_AddBtn];
}

- (void)MQ_AddBtn {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick:(UIButton *)sender {
    sender.backgroundColor = UIColor.randomColor;
}

@end
