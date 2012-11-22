//
//  ViewController.m
//  motify.me
//
//  Created by Ostap Koziy on 10/2/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
@class HomeViewController;
@class User;

@interface ViewController ()

@end

@implementation ViewController
@synthesize signInButton;
@synthesize registerButton;
@synthesize emailInput;
@synthesize passwordInput;
@synthesize background;
@synthesize emailErrorMessage;
@synthesize passwordErrorMessage;



-(void)hideKeyboard: (id) sender{
    [sender resignFirstResponder];
}
-(IBAction)backgroundTapped: (id) sender{
    [emailInput resignFirstResponder];
    [passwordInput resignFirstResponder];
}

-(IBAction)hideErrorMessage:(id)sender{
    passwordErrorMessage.hidden = YES;
    emailErrorMessage.hidden = YES;
}

-(IBAction)loginButtonPressed: (id) sender{
    if(emailInput.text.length == 0){
        emailErrorMessage.text = @"E-Mail cannot be empty";
        emailErrorMessage.hidden = NO;
    }
    if(passwordInput.text.length == 0){
        passwordErrorMessage.text = @"Incorrect password";
        passwordErrorMessage.hidden = NO;
    }else{
        User *LoginUser = [[User alloc] initUser:emailInput.text Email:emailInput.text Password:passwordInput.text];
        [self performSegueWithIdentifier:@"sign-in-segue" sender:sender];
   }
    
}

-(IBAction)registerButtonPressed: (id) sender{

    if(emailInput.text.length == 0){
        emailErrorMessage.text = @"E-Mail cannot be empty";
        emailErrorMessage.hidden = NO;
    }
    if(passwordInput.text.length == 0){
        passwordErrorMessage.text = @"Password cannot be empty";
        passwordErrorMessage.hidden = NO;
    }
        //check if user is in base, if NOT - create user
        //set user to db
    [self performSegueWithIdentifier:@"register-segue" sender:sender];
}




- (void)viewDidLoad
{
    emailErrorMessage.hidden = YES;
    passwordErrorMessage.hidden = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setSignInButton:nil];
    [self setRegisterButton:nil];
    [self setEmailInput:nil];
    [self setPasswordInput:nil];
    [self setBackground:nil];
    [self setEmailErrorMessage:nil];
    [self setPasswordErrorMessage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}

@end
