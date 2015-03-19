//
//  KGWStatusOriginalView.m
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//  原创微博

#import "KGWStatusOriginalView.h"

@interface KGWStatusOriginalView ()
/** 昵称 */
@property(nonatomic, weak) UILabel *nameLabel;

/** 头像 */
@property(nonatomic, weak) UIImageView *iconView;

/** 微博发表时间 */
@property(nonatomic, weak) UILabel *timeLabel;

/** 微博来源 */
@property(nonatomic, weak) UILabel *sourceLabel;

/** 微博文本内容 */
@property(nonatomic, weak) UILabel *textLabel;


@end

@implementation KGWStatusOriginalView

/** 代码初始化方法 */
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) { // 初始化子控件开始
        // 昵称
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.font = HVWStatusOriginalNameFont;
        self.nameLabel = nameLabel;
        [self addSubview:nameLabel];
        
        // 头像
        UIImageView *iconView = [[UIImageView alloc] init];
        self.iconView = iconView;
        [self addSubview:iconView];
        
        // 发表时间
        UILabel *timeLabel = [[UILabel alloc] init];
        self.timeLabel = timeLabel;
        [self addSubview:timeLabel];
        
        // 来源
        UILabel *sourceLabel = [[UILabel alloc] init];
        self.sourceLabel = sourceLabel;
        [self addSubview:sourceLabel];
        
        // 正文
        UILabel *textLabel = [[UILabel alloc] init];
        self.textLabel = textLabel;
        [self addSubview:textLabel];
    }
    
    return self;
}
@end
