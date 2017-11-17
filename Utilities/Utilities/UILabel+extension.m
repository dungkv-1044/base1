//
//  UILabel+extension.m
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "UILabel+extension.h"

@implementation UILabel (extension)
- (CGFloat)calculateLabelHeightForText:(NSString *)text usingFont:(UIFont *)font maxWidth:(CGFloat)width {
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:text attributes:@{ NSFontAttributeName: font }];
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){width, CGFLOAT_MAX} options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    return rect.size.height;
}
- (CGFloat)calculateLabelWidthForText:(NSString *)text usingFont:(UIFont *)font maxWidth:(CGFloat)width {
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:text attributes:@{ NSFontAttributeName: font }];
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){width, CGFLOAT_MAX} options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    return rect.size.width;
}
@end
