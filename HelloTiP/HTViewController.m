//
//  HTViewController.m
//  HelloTiP
//
//  Created by Kyle Frost on 3/20/14.
//  Copyright (c) 2014 Today's iPhone. All rights reserved.
//

#import "HTViewController.h"

/******* 1 *******/
#import <Social/Social.h>

@interface HTViewController ()

@end

@implementation HTViewController

@synthesize textField;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    /******** 1 ********/
    self.textField.delegate = self;

}


-(IBAction)pressButton:(id)sender {
    

    NSString *textFieldText = textField.text;
    

    NSString *alertMessage = [NSString stringWithFormat:@"Hello, %@!", textFieldText];
    
    /******** 1 ********/
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello!" message:alertMessage delegate:self cancelButtonTitle:@"Nice to meet you." otherButtonTitles:@"Share to Twitter", @"Share to Facebook", nil];
    
    
    [alertView show];
}

/******** 1 ********/
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    /******** 2 ********/
    NSString *textFieldText = textField.text;
    NSString *alertMessage = [NSString stringWithFormat:@"Hello from %@'s iPhone app!", textFieldText];
    
    /******** 3 ********/
    if (buttonIndex == 1) {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:alertMessage];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
    
    /******** 4 ********/
    else if (buttonIndex == 2) {
        SLComposeViewController *postSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [postSheet setInitialText:alertMessage];
        [self presentViewController:postSheet animated:YES completion:nil];
    }
    
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
