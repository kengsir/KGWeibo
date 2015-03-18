//
//  KGStatusCell.m
//  KGWeibo
//
//  Created by Kengsir on 3/18/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import "KGStatusCell.h"


@implementation KGStatusCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier]) { // 初始化子控件开始
        // 初始化内容控件
        [self setupStatusContentView];
        
        // 初始化工具条控件
        [self setupToolbar];
    }
    
    return self;
}

// 初始化内容控件
-(void)setupStatusContentView
{   
    KGStatusContentView *statusContentView = [[KGStatusContentView alloc]init];
    self.statusContentView = statusContentView;
    [self.contentView addSubview:statusContentView];
}

 // 初始化工具条控件
-(void)setupToolbar
{
    KGStatusToolbar *toolBar = [[KGStatusToolbar alloc]init];
    self.toolbarView = toolBar;
    [self.contentView addSubview:toolBar];
}
@end
