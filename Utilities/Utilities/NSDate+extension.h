//
//  NSDate+extension.h
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (extension)
- (NSString *)convertDateToString:(NSDate *)date skipMiliSeconds:(BOOL)skipMiliSeconds;
- (NSString *)createUnixTimestampFromDate:(NSDate *)date;
- (NSDate *)createDateFromUnixTimestamp:(NSString *)unixTimestamp;
- (NSString *)convertStringToDate:(NSDate *)date withFormatString:(NSString *)formatString;
@end
