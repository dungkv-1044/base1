//
//  NSDate+extension.m
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "NSDate+extension.h"

@implementation NSDate (extension)
- (NSString *)convertDateToString:(NSDate *)date skipMiliSeconds:(BOOL)skipMiliSeconds {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yy"];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    
    if (skipMiliSeconds) {
        [timeFormat setDateFormat:@"HH:mm:ss"];
    } else {
        [timeFormat setDateFormat:@"HH:mm:ss.SSS"];
    }
    NSString *dateString = [dateFormat stringFromDate:date];
    NSString *timeString = [timeFormat stringFromDate:date];
    NSString *retVal;
    if (skipMiliSeconds) {
        retVal = [NSString stringWithFormat:@"%@ %@",dateString, timeString];
    } else {
        retVal = [NSString stringWithFormat:@"%@ %@ : ",dateString, timeString];
    }
    return retVal;
}
- (NSString *)createUnixTimestampFromDate:(NSDate *)date {
    int timestamp = [date timeIntervalSince1970];
    return [NSString stringWithFormat:@"%d",timestamp];
}
- (NSDate *)createDateFromUnixTimestamp:(NSString *)unixTimestamp {
    NSTimeInterval timestampInterval = [unixTimestamp doubleValue];
    return [NSDate dateWithTimeIntervalSince1970:timestampInterval];
}
- (NSString *)convertStringToDate:(NSDate *)date withFormatString:(NSString *)formatString {
    //format example: @"dd MMM yyyy HH:mm:ss"
    NSDateFormatter *dateFormatter;
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    
    return [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:date]];
}
@end
