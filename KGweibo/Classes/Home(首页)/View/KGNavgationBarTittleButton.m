//
//  KGNavgationBarTittleButton.m
//  KGWeibo
//
//  Created by mob on 15/3/17.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import "KGNavgationBarTittleButton.h"

@implementation KGNavgationBarTittleButton

- (id)initWithFrame:(CGRect)frame
{
    // 统一设置按钮的样式
    self = [super initWithFrame:frame];
    if (self) {
        // 设置字体
        self.titleLabel.font = @"14";
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        // 文本右对齐
        [self.titleLabel setTextAlignment:NSTextAlignmentRight];
        
        // 取消图片高亮显示
        [self setAdjustsImageWhenHighlighted:NO];
        
        // 图片居中
        [self.imageView setContentMode:UIViewContentModeBottom];
    }
    return self;
}

#warning 这里是定制navgationbarbutton
// 重写image的绘图方法

// 重写title的绘图方法
@end
