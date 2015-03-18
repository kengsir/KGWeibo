//
//  kAccount.h
//  kweibo
//
//  Created by Kengsir on 3/1/15.
//  Copyright (c) 2015 Kengsir. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface kAccount : NSObject <NSCoding>
@property (nonatomic,copy)NSString *access_token;

// 如果服务器返回的数据很长的话使用long long
@property (nonatomic,assign)long long expires_in;

@property (nonatomic,assign)long long remind_in;

@property (nonatomic,assign)long long uid;

- (instancetype)initWithDict : (NSDictionary *)dict;

+ (instancetype)accountWithDict : (NSDictionary *) dict;


@end

