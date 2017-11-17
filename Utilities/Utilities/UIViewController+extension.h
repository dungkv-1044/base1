//
//  UIViewController+extension.h
//  Utilities
//
//  Created by khuat.van.dung on 11/17/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (extension)
+ (UIViewController*)getViewControllerFromStoryboard:(NSString*)storyboardName;
+ (UIViewController*)getNavigationControllerFromStoryboard:(NSString*)storyboardName;
+ (UIViewController*)getViewContrllerWithIdentifier:(NSString*)identifier withStoryboardName: (NSString*)storyboardName;
@end
