//
//  UILabel+extension.h
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (extension)
- (CGFloat)calculateLabelHeightForText:(NSString *)text usingFont:(UIFont *)font maxWidth:(CGFloat)width;
- (CGFloat)calculateLabelWidthForText:(NSString *)text usingFont:(UIFont *)font maxWidth:(CGFloat)width;
@end
