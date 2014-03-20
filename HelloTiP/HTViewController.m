//
//  HTViewController.m
//  HelloTiP
//
//  Created by Kyle Frost on 3/20/14.
//  Copyright (c) 2014 Today's iPhone. All rights reserved.
//

#import "HTViewController.h"

@interface HTViewController ()

@end

@implementation HTViewController

@synthesize textField;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    /******** 1 ********/
    self.textField.delegate = self;

}

/******** 1 ********/
-(IBAction)pressButton:(id)sender {
    
    /******** 2 ********/
    NSString *textFieldText = textField.text;
    
    /******** 3 ********/
    NSString *alertMessage = [NSString stringWithFormat:@"Hello, %@!", textFieldText];
    
    /******** 4 ********/
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello!" message:alertMessage delegate:nil cancelButtonTitle:@"Nice to meet you." otherButtonTitles:nil];
    
    /******** 5 ********/
    [alertView show];
}

/******** 1 ********/
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

/******** 2 ********/
- (BOOL)textFieldShouldReturn:(UITextField *)aTextField {
    [aTextField resignFirstResponder];
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
