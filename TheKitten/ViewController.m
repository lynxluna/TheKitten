//
//  ViewController.m
//  TheKitten
//
//  Created by Didiet Noor on 25/08/14.
//  Copyright (c) 2014 Didiet Noor. All rights reserved.
//

#import "ViewController.h"
#import "KittenService.h"

@interface ViewController ()
@property (assign, nonatomic) BOOL userNameValid;
@property (assign, nonatomic) BOOL passwordValid;

@property (nonatomic, strong) KittenService *service;

@end

@implementation ViewController

- (instancetype) initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder]) {
    _service = [KittenService new];
  }
  return self;
}
            
- (void)viewDidLoad {
  [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  [self updateUIState];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) isUserNameValid {
  return self.userNameField.text.length > 3;
}

- (BOOL) isPasswordValid {
  return self.passwordField.text.length > 3;
}

- (void) updateUIState {
  self.userNameField.backgroundColor = self.userNameValid ? [UIColor clearColor] : [UIColor yellowColor];
  self.passwordField.backgroundColor = self.passwordValid ? [UIColor clearColor] : [UIColor yellowColor];
  self.signInButton.enabled = self.userNameValid && self.passwordValid;
}


- (IBAction)signIn:(id)sender
{
  self.signInButton.enabled = NO;
  self.invalidCredsLabel.hidden = YES;
  
  [self.service signInWithUserName:self.userNameField.text
                          password:self.passwordField.text
                           complete:^(BOOL success) {
                             self.signInButton.enabled = YES;
                             self.invalidCredsLabel.hidden = success;
                             if (success) {
                               [self performSegueWithIdentifier:@"showRaisa" sender:sender];
                             }
                           }];
}
- (IBAction)userNameChanged:(id)sender {
  self.userNameValid = [self isUserNameValid];
  [self updateUIState];
}

- (IBAction)passwordChanged:(id)sender {
  self.passwordValid = [self isPasswordValid];
  [self updateUIState];
}
@end
