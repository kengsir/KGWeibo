//
//  KGStatusOriginalFrame.h
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGStatus.h"

@interface KGStatusOriginalFrame : NSObject
#pragma mark - frame模型
/** 自己的frame */
@property(nonatomic, assign) CGRect frame;

/** 昵称 */
@property(nonatomic, assign) CGRect nameFrame;

/** 正文 */
@property(nonatomic, assign) CGRect textFrame;

/** 来源 */
@property(nonatomic, assign) CGRect sourceFrame;

/** 发表时间 */
@property(nonatomic, assign) CGRect timeFrame;

/** 头像 */
@property(nonatomic, assign) CGRect iconFrame;

#pragma mark - 数据模型
/** 微博数据 */
@property(nonatomic, strong) KGStatus *status;@end
