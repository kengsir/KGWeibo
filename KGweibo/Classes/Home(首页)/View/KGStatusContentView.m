//
//  KGStatusContentView.m
//  KGWeibo
//
//  Created by mob on 15/3/18.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//  微博内容view （包含原创view 和 转发view）

#import "KGStatusContentView.h"

@implementation KGStatusContentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 初始化原创内容控件
        [self setupOriginalView];
      
        // 初始化转发内容控件
        [self setupRetweetedView];
    }
    return self;
}

 /** 初始化原创内容控件 */
- (void) setupOriginalView
{
   
    
 }


/** 初始化转发内容控件 */
- (void) setupRetweetedView
{
    
    
}
@end
