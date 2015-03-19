//
//  KGStatusFrame.h
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGStatus.h"
#import "KGStatusContentFrame.h"
#import "KGStatusToolbarFrame.h"

@interface KGStatusFrame : NSObject

#pragma mark - 微博数据模型
@property(nonatomic, strong) KGStatus *status;

#pragma mark - 微博Frame模型
/** 微博内容frame */
@property(nonatomic, strong) KGStatusContentFrame *contentF;

/** 工具条frame */
@property(nonatomic, strong) KGStatusToolbarFrame *toolBarF;

/** cell高度 */
@property(nonatomic, assign) CGFloat cellHeight;

#pragma mark - 方法
/** 使用status数组包装 */

@end
