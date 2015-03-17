//
//  KGNavgationMainController.m
//  KGWeibo
//
//  Created by Kengsir on 3/17/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import "KGNavgationMainController.h"
#import "UIImage+Extension.h"

@interface KGNavgationMainController ()

@end

@implementation KGNavgationMainController

// 类初始化的时候调用,所有oc对象都支持
+(void)initialize
{
    // 初始化导航栏样式
    [self initNavigationBarTheme];
    
    // 初始化导航栏item样式
    [self initBarButtonItemTheme];
}

/**
 *   统一设置导航栏item的样式
 *   因为是通过主题appearence统一做修改所有的NavivationBar样式，使用类方法
 */
+ (void)initNavigationBarTheme
{
    // 使用appearence（主题）设置，统一修改所有导航栏样式
    UINavigationBar *appearance = [UINavigationBar appearance];
    
    // 为了统一iOS6和iOS7，iOS6需要设置导航栏背景来模拟iOS7的效果
    if (!iOS7) {
#warning - UIBarMetricsDefault :参数要指定的外观指标
        [appearance setBackgroundImage:[UIImage imageWithName:@"navigationbar_background"] forBarMetrics:UIBarMetricsDefault];
    }
    
    // 设置属性 - 声明一个字典，将属性值设置进字典
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    // 设置字体
    attr[NSForegroundColorAttributeName] = [UIColor blackColor];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    // 消去文字阴影，设置阴影偏移为0
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = CGSizeZero;
    attr[NSShadowAttributeName] = shadow;
    
    [appearance setTitleTextAttributes:attr];
    
}

+ (void)initBarButtonItemTheme
{
    // 设置导航栏，修改所有UINavigationBar的样式
    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    
    // 设置noraml状态下的样式
    NSMutableDictionary *normalTextAttr = [NSMutableDictionary dictionary];
    // 字体大小
    normalTextAttr[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    // 字体颜色
    normalTextAttr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    // 设置为normal样式
    [appearance setTitleTextAttributes:normalTextAttr forState:UIControlStateNormal];
    
    // 设置highlighted状态下的样式
#warning - dictionaryWithDictionary 根据现有的字典创建字典
    NSMutableDictionary *highlightedTextAttr = [NSMutableDictionary dictionaryWithDictionary:normalTextAttr];
    // 字体颜色
    highlightedTextAttr[NSForegroundColorAttributeName] = [UIColor redColor];
    // 设置为normal样式
    [appearance setTitleTextAttributes:highlightedTextAttr forState:UIControlStateHighlighted];
    
    // 设置disabled状态下的样式
    NSMutableDictionary *disabledTextAttr = [NSMutableDictionary dictionaryWithDictionary:normalTextAttr];
    // 字体颜色
    disabledTextAttr[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    // 设置为normal样式
    [appearance setTitleTextAttributes:disabledTextAttr forState:UIControlStateDisabled];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
