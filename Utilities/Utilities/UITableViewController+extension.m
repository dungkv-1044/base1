//
//  UITableViewController+extension.m
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "UITableViewController+extension.h"

@implementation UITableViewController (extension)
- (void) registerNibCellBy: (NSString*)identifier {
    UINib *cellNib = [UINib nibWithNibName:identifier bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:identifier];
}
- (void) regiserNibHeaderViewBy:(NSString*)identifier {
    UINib *cellNib = [UINib nibWithNibName:identifier bundle:nil];
    [self.tableView registerNib:cellNib forHeaderFooterViewReuseIdentifier:identifier];
}
- (void) hideEmtpyCells {
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame: CGRectZero];
}
@end
