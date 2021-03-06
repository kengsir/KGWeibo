//
//  UIBarButtonItem+Extension.h
//  KGWeibo
//
//  Created by Kengsir on 3/17/15.
//  Copyright (c) 2015 kengsir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (instancetype)itemWithImage : (NSString *)imageName hightlightedImage:(NSString *)hightlightedImageName target :(id)target selector:(SEL)selector;

@end
