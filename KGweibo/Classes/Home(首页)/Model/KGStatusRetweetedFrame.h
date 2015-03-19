//
//  KGStatusRetweetedFrame.h
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGStatus.h"

@interface KGStatusRetweetedFrame : NSObject

#pragma mark - frame模型
/** 自己的frame */
@property(nonatomic, assign) CGRect frame;

/** 昵称 */
@property(nonatomic, assign) CGRect nameFrame;

/** 正文 */
@property(nonatomic, assign) CGRect textFrame;

#pragma mark - 数据模型
/** 微博数据 */
@property(nonatomic, strong) KGStatus *status;

@end
