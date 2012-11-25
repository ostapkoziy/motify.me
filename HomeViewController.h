//
//  HomeViewController.h
//  motify.me
//
//  Created by Ostap Koziy on 10/6/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideModel.h"
#import <Social/Social.h>
#import "CMPopTipView.h"



@interface HomeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *arrowLeft;
@property (strong, nonatomic) IBOutlet UIButton *arrowRight;
@property (strong, nonatomic) IBOutlet UIImageView *slideImage;
@property (strong, nonatomic) IBOutlet UILabel *slideTitle;
@property (strong, nonatomic) IBOutlet UILabel *slideText;
@property (strong, nonatomic) IBOutlet UIView *shareView;

@property (strong, nonatomic) CMPopTipView *roundRectButtonPopTipView;


-(void) initCarouselWithItem: (SlideModel*) model;
-(IBAction)rotateCarouselLeft:(id)sender;
-(IBAction)rotateCarouselRight:(id)sender;
-(IBAction)shareButtonPressed:(id)sender;
-(IBAction)twiShare:(id)sender;
-(IBAction)facebookShare:(id)sender;
@end
