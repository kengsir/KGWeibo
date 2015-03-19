//
//  KGStatusFrame.m
//  KGWeibo
//
//  Created by mob on 15/3/19.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import "KGStatusFrame.h"

@implementation KGStatusFrame

/**使用status数组包装一个statusFrame数组*/


// 设置数据
-(void)setStatus:(KGStatus *)status
{
    _status =status;
    
    // 设置子控件frame
    // 微博内容frame
    KGStatusFrame *contentFrame = [[KGStatusFrame alloc]init];
    self.contentF = contentFrame;
    // 设置微博数据
    contentFrame.status = status;
    
    //  工具条frame
    KGStatusToolbarFrame *toolbarFrame = [[KGStatusToolbarFrame alloc]init];
    self.toolBarF = toolbarFrame;
    toolbarFrame.status = status;
    CGRect tbFrame = toolbarFrame.frame;
    tbFrame.origin.y = CGRectMake(contentFrame.frame);

    // cell 的高度
    self.cellHeight = CGRectGetMaxX(tbFrame);
}


@end
