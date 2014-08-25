//
//  ViewController.h
//  TheKitten
//
//  Created by Didiet Noor on 25/08/14.
//  Copyright (c) 2014 Didiet Noor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)signIn:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;
@property (weak, nonatomic) IBOutlet UILabel *invalidCredsLabel;
- (IBAction)userNameChanged:(id)sender;
- (IBAction)passwordChanged:(id)sender;

@end

