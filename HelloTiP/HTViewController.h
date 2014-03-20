//
//  HTViewController.h
//  HelloTiP
//
//  Created by Kyle Frost on 3/20/14.
//  Copyright (c) 2014 Today's iPhone. All rights reserved.
//

#import <UIKit/UIKit.h>

/******** 1 ********/
@interface HTViewController : UIViewController <UITextFieldDelegate>

/******** 2 ********/
@property (strong, nonatomic) IBOutlet UITextField *textField;

/******** 3 ********/
-(IBAction)pressButton:(id)sender;

@end
