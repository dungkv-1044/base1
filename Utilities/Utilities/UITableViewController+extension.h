//
//  UITableViewController+extension.h
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewController (extension)
- (void) registerNibCellBy: (NSString*)identifier;
- (void) regiserNibHeaderViewBy:(NSString*)identifier;
- (void) hideEmtpyCells;
@end
