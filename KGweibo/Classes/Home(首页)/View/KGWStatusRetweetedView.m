//
//  KGWStatusRetweetedView.m
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//  转发微博

#import "KGWStatusRetweetedView.h"

@interface KGWStatusRetweetedView ()
/** 昵称 */
@property(nonatomic, weak) UILabel *nameLabel;

/** 微博文本内容 */
@property(nonatomic, weak) UILabel *textLabel;
@end


@implementation KGWStatusRetweetedView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) { // 初始化子控件开始
        // 昵称
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.font = HVWStatusOriginalNameFont;
        self.nameLabel = nameLabel;
        [self addSubview:nameLabel];
        
        // 正文
        UILabel *textLabel = [[UILabel alloc] init];
        self.textLabel = textLabel;
        [self addSubview:textLabel];
    }
    
    return self;
}
@end
