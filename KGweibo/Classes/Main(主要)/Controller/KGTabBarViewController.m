//
//  kTabBarViewController.m
//  KGWeibo
//
//  Created by mob on 15/3/16.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import "KGTabBarViewController.h"


@implementation KGTabBarViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加子控制器
    // 首页
    KGHomeViewController *homeVC = [[KGHomeViewController alloc]init];
    homeVC.view.backgroundColor = [UIColor redColor];
    homeVC.title = @"首页";
    [self addChildViewController:homeVC];
    
    // 消息
    KGMessageViewController *messageVC = [[KGMessageViewController alloc]init];
    messageVC.view.backgroundColor = [UIColor redColor];
    messageVC.title = @"消息";
    [self addChildViewController:messageVC];
    
    // 发现
    KGDiscoverViewController *discoverVC = [[KGDiscoverViewController alloc]init];
    discoverVC.view.backgroundColor = [UIColor redColor];
    discoverVC.title = @"发现";
    [self addChildViewController:discoverVC];
    
    // 我
    KGProfileViewController *profileVC = [[KGProfileViewController alloc]init];
    profileVC.view.backgroundColor = [UIColor redColor];
    profileVC.title = @"我";
    [self addChildViewController:profileVC];
    
    
}
@end
