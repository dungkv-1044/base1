//
//  UIViewController+extension.m
//  Utilities
//
//  Created by khuat.van.dung on 11/17/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "UIViewController+extension.h"

@implementation UIViewController (extension)
+ (UIViewController*)getViewControllerFromStoryboard:(NSString*)storyboardName {
    NSString *identifier = [[self class] description];
    return [self getViewContrllerWithIdentifier:identifier withStoryboardName:storyboardName];
}
+ (UIViewController*)getViewContrllerWithIdentifier:(NSString *)identifier withStoryboardName:(NSString *)storyboardName {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    return [storyBoard instantiateViewControllerWithIdentifier:identifier];
}
+ (UIViewController*)getNavigationControllerFromStoryboard:(NSString *)storyboardName {
    NSString *identifier = [[self class] description];
    identifier = [identifier stringByAppendingString:@"Nav"];
    return [self getViewContrllerWithIdentifier:identifier withStoryboardName:storyboardName];
}
@end
