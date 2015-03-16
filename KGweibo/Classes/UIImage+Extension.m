//
//  UIImage+Extension.m
//  KGWeibo
//
//  Created by mob on 15/3/16.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageWithName:(NSString *)imageName
{
    UIImage *image = nil;
    
    // 如果是IOS7 或以上版本
    if (iOS7) {
        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@_os7",imageName]];
    }
    
    if(!iOS7){
        image = [UIImage imageNamed:imageName];
    }
    return image;
}
@end
