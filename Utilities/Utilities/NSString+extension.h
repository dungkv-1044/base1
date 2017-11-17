//
//  NSString+extension.h
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (extension)
- (NSString*)trim;
- (BOOL)isEmpty;
- (BOOL)isNumberic;
- (BOOL)isStringValidWithLength:(int)stringLength;
- (BOOL)isValidateEmail;
- (BOOL)isValidPhoneNumber;
@end
