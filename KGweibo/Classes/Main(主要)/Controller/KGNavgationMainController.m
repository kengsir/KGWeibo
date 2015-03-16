//
//  KGNavgationMainController.m
//  KGWeibo
//
//  Created by Kengsir on 3/17/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import "KGNavgationMainController.h"

@interface KGNavgationMainController ()

@end

@implementation KGNavgationMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 重写navgationBar的push方法，用来实现跳转时把tabbar隐藏
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    [super pushViewController:viewController animated:animated];
    
    if (self.viewControllers.count > 0) { // 如果不是跟控制器，隐藏tabbar
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
}

@end
