//
//  KGUser.m
//  KGWeibo
//
//  Created by Kengsir on 3/19/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import "KGUser.h"

@implementation KGUser

/** 友好显示名称 */
@property(nonatomic, copy) NSString *name;

/** 用户头像地址（中图），50×50像素 */
@property(nonatomic, copy) NSString *profile_image_url;

/** 用户昵称 */
@property(nonatomic, copy) NSString *screen_name;

/** 会员等级 */
@property(nonatomic, assign) int mbrank;

/** 会员类型 */
@property(nonatomic, assign) int mbtype;

/** 是否是会员 */
@property(nonatomic, assign, getter=isVip) BOOL vip;
@end
