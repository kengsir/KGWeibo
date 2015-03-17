//
//  UIBarButtonItem+Extension.m
//  KGWeibo
//
//  Created by Kengsir on 3/17/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
+ (instancetype)itemWithImage : (NSString *)imageName hightlightedImage:(NSString *)hightlightedImageName target :(id)target selector:(SEL)selector
{
    UIBarButtonItem *item = [[self alloc]init];
    // 创建按钮
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *image = [UIImage imageNamed:imageName];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:hightlightedImageName] forState:UIControlStateHighlighted];
    
    // 设置frame 才可以显示按钮
    button.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    
    item.customView = button;
    return item;
}
@end
