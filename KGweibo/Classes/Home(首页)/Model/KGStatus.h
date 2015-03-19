//
//  KGStatus.h
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KGUser.h"

@interface KGStatus : NSObject

/** 字符串型的微博ID */
@property(nonatomic, copy) NSString *idstr;

/** 微博信息内容 */
@property(nonatomic, copy) NSString *text;

/** 微博作者的用户信息字段 详细 */
@property(nonatomic, strong) KGUser *user;

/** 微博配图地址数组，里面装载的是HVWPic模型 */
@property(nonatomic, strong) NSArray *pic_urls;

/** 微博创建时间 */
@property(nonatomic, copy) NSString *created_at;

/** 微博来源 */
@property(nonatomic, copy) NSString *source;

/** 转发微博 */
@property(nonatomic, strong) KGStatus *retweeted_status;

/** int	转发数 */
@property(nonatomic, assign) int reposts_count;

/** int	评论数 */
@property(nonatomic, assign) int comments_count;

/** int	表态数 */
@property(nonatomic, assign) int attitudes_count;

/** 转发昵称 */
- (NSString *) retweetedName;

@end
