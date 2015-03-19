//
//  KGStatusContentFrame.m
//  KGWeibo
//
//  Created by Kengsir on 3/19/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import "KGStatusContentFrame.h"

@implementation KGStatusContentFrame
/** 加载微博数据 */
- (void)setStatus:(KGStatus *)status {
    _status = status;
    
    // 设置控件frame
    // 原创微博
    KGStatusOriginalFrame *originalFrame = [[KGStatusOriginalFrame alloc] init];
    self.originalFrame = originalFrame;
    originalFrame.status = status;
    
    // 转发微博
    CGFloat contentHeight = 0;
    if (self.status.retweeted_status) { // 当转发了微博的时候
        KGStatusRetweetedFrame *retweetedFrame = [[KGStatusRetweetedFrame alloc] init];
        retweetedFrame.status = status.retweeted_status;
        
        // 设置frame
        CGRect retFrame = retweetedFrame.frame;
        retFrame.origin.y = CGRectGetMaxY(originalFrame.frame);
        
        retweetedFrame.frame = retFrame;
        self.retweetedFrame = retweetedFrame;
        
        contentHeight = CGRectGetMaxY(retFrame);
    } else {
        contentHeight = CGRectGetMaxY(originalFrame.frame);
    }
    
    // 自己的frame
    CGFloat contentX = 0;
    CGFloat contentY = 0;
    CGFloat contentWidth = HVWScreenWidth;
    self.frame = CGRectMake(contentX, contentY, contentWidth, contentHeight);
}
@end
