//
//  NSString+extension.m
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "NSString+extension.h"

@implementation NSString (extension)
- (BOOL)isEmpty {
    return [self length] == 0;
}
- (BOOL)isNumberic {
    NSScanner *scanner = [NSScanner scannerWithString:self];
    BOOL isNumberic = [scanner scanInt:NULL] && [scanner isAtEnd];
    return !self.isEmpty && isNumberic;
}
- (NSString*)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
- (BOOL)isStringValidWithLength:(int)stringLength {
    return [self length] == stringLength;
}
- (BOOL)isValidateEmail {
    BOOL stricterFilter = NO;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}
- (BOOL) isValidPhoneNumber {
    //  phone start wwith 0/2/3/5/6/8/9
    //  10 digits or 11 digits
    NSString *phoneRegex = @"[0235689][0-9]{9}([0-9]{1})?";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    BOOL matches = [test evaluateWithObject:self];
    return matches;
}
@end
