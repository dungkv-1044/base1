//
//  UIColor+extension.m
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "UIColor+extension.h"

@implementation UIColor (extension)
- (UIColor*)colorFromRGB: (NSInteger)rgbValue {
    UIColor *color = [[UIColor alloc] initWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.f green:((float)((rgbValue & 0x00FF00) >> 8))/255.f blue:((float)(rgbValue & 0x0000FF))/255.f alpha:1.f];
    return color;
}
- (NSString *)hexFromRGB:(NSInteger)rgbValue
{
    NSLog(@"%li",(long)rgbValue);
    int red, green, blue;
    red = (rgbValue & 0xFF0000) >> 16;
    green = (rgbValue & 0x00FF00) >> 8;
    blue = rgbValue & 0x0000FF;
    NSString *hex = [NSString stringWithFormat:@"%2X%2X%2X", red, green, blue];
    return hex;
}
//hexString -> UIcolor // "#00FF00" (#RRGGBB).
- (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}
@end
