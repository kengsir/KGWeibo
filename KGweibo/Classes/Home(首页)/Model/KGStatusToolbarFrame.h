//
//  KGStatusToolbarFrame.h
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGStatus.h"

@interface KGStatusToolbarFrame : NSObject

 /** toolbar的frame */
@property(nonatomic, assign) CGRect frame;

#pragma mark - 数据模型
/** 微博数据 */
@property(nonatomic, strong) KGStatus *status;

@end
