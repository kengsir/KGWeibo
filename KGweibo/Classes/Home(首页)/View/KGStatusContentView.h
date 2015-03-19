//
//  KGStatusContentView.h
//  KGWeibo
//
//  Created by mob on 15/3/18.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KGWStatusOriginalView.h"
#import "KGWStatusRetweetedView.h"

@interface KGStatusContentView : UIView
 /** 原创内容 */
 @property(nonatomic, weak) KGWStatusOriginalView *originalView;

 /** 转发内容 */
 @property(nonatomic, weak) KGWStatusRetweetedView *retweetedView;
@end
