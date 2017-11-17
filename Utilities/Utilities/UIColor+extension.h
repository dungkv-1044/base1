//
//  UIColor+extension.h
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (extension)
- (UIColor*)colorFromRGB: (NSInteger)rgbValue;
- (NSString *)hexFromRGB:(NSInteger)rgbValue;
- (UIColor *)colorFromHexString:(NSString *)hexString;
@end
