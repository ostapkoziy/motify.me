//
//  ViewController.h
//  motify.me
//
//  Created by Ostap Koziy on 10/2/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"

@interface ViewController : UIViewController


-(IBAction)hideKeyboard: (id) sender;
-(IBAction)backgroundTapped: (id) sender;
-(IBAction)hideErrorMessage:(id)sender;

-(IBAction)loginButtonPressed: (id) sender;
-(IBAction)registerButtonPressed: (id) sender;


@property (strong, nonatomic) IBOutlet UIButton *signInButton;
@property (strong, nonatomic) IBOutlet UIButton *registerButton;
@property (strong, nonatomic) IBOutlet UITextField *emailInput;
@property (strong, nonatomic) IBOutlet UITextField *passwordInput;
@property (strong, nonatomic) IBOutlet UIButton *background;
@property (strong, nonatomic) IBOutlet UILabel *emailErrorMessage;
@property (strong, nonatomic) IBOutlet UILabel *passwordErrorMessage;
@end
