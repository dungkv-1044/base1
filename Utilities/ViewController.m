//
//  ViewController.m
//  Utilities
//
//  Created by khuat.van.dung on 11/16/17.
//  Copyright © 2017 khuat.van.dung. All rights reserved.
//

#import "ViewController.h"
#import "NSString+extension.h"
#import "UIColor+extension.h"
#import "UIFont+extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _lbText.text = @"ABCSAD";
    _lbText.font = [[UIFont alloc] fontHelveticalNeueWithFontSize:30];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnAdd:(UIButton *)sender {
    NSString *text = self.tfInput.text;
    NSLog(@"Is valid email: %d", [text isStringValidWithLength:6]);
    
}
- (IBAction)btnRead:(UIButton *)sender {
    NSString *text = self.tfInput.text;
  NSLog(@"Is valid phone: %d", text.isValidPhoneNumber);
    
}


@end
