//
//  KGStatusContentView.h
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGStatusOriginalFrame.h"
#import "KGStatusRetweetedFrame.h"
#import "KGStatus.h"

@interface KGStatusContentFrame : NSObject

#pragma mark - frame模型
/** 原创微博frame */
@property(nonatomic, strong) KGStatusOriginalFrame *originalFrame;

/** 转发微博frame */
@property(nonatomic, strong) KGStatusRetweetedFrame *retweetedFrame;

/** 自己的frame */
@property(nonatomic, assign) CGRect frame;

#pragma mark - 数据模型
/** 微博数据 */
@property(nonatomic, strong) KGStatus *status;

@end
