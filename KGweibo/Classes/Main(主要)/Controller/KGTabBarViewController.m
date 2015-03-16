//
//  kTabBarViewController.m
//  KGWeibo
//
//  Created by mob on 15/3/16.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGTabBarViewController.h"
#import "UIImage+Extension.h"

@implementation KGTabBarViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加子控制器
    // 首页
    KGHomeViewController *homeVC = [[KGHomeViewController alloc]init];
    [self addChildViewController:homeVC WithTitle:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    // 消息
    KGMessageViewController *messageVC = [[KGMessageViewController alloc]init];
    [self addChildViewController:messageVC WithTitle:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    
    
    // 发现
    KGDiscoverViewController *discoverVC = [[KGDiscoverViewController alloc]init];
    [self addChildViewController:discoverVC WithTitle:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    
    // 我
    KGProfileViewController *profileVC = [[KGProfileViewController alloc]init];
   [self addChildViewController:profileVC WithTitle:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
    
}


-(void)addChildViewController:(UIViewController *)viewController
                    WithTitle:(NSString *)title
                        image:(NSString *)imageName
                selectedImage:(NSString *)selectedImageName
{
// 设置标题

// 设置图片
    viewController.tabBarItem.image = [UIImage imageWithName:imageName];
// 被选中的图标
    
    UIImage *selectedImage = [UIImage imageWithName:selectedImageName];
    // ios7 下不要渲染被选中的tab图标，（ios7 会自动渲染成为蓝色）
    if (iOS7) {
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    viewController.tabBarItem.selectedImage = selectedImage;
    
// 添加子控制器 -- 导航栏控制器
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:viewController];
    
    [self addChildViewController:nav];

    
}
@end
