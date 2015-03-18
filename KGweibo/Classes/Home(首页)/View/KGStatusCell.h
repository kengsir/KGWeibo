//
//  KGStatusCell.h
//  KGWeibo
//
//  Created by Kengsir on 3/18/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KGStatusContentView.h"
#import "KGStatusToolbar.h"

@interface KGStatusCell : UITableViewCell

// 微博内容控件
@property (weak,nonatomic)KGStatusContentView * statusContentView;

// 微博工具条控件
@property (weak,nonatomic)KGStatusToolbar * toolbarView;
@end
