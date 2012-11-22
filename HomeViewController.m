//
//  HomeViewController.m
//  motify.me
//
//  Created by Ostap Koziy on 10/6/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import "HomeViewController.h"

@class SlideModel;

@interface HomeViewController (){
    NSMutableArray *slideArray;
    SlideModel *slideModel1, *slideModel2, *slideModel3;
    int carouselIndex;
}
    
@end


@implementation HomeViewController

@synthesize arrowLeft, arrowRight, slideImage, slideText, slideTitle;

-(IBAction)rotateCarouselLeft:(id)sender{
    if(carouselIndex > 1){
        carouselIndex--;
    }else{
        carouselIndex = [slideArray count];
    }
    [self initCarouselWithItem:slideArray[carouselIndex - 1]];
}
-(IBAction)rotateCarouselRight:(id)sender{
    if(carouselIndex < [slideArray count]){
        carouselIndex++;
    }else{
        carouselIndex = 1;
    }
    [self initCarouselWithItem:slideArray[carouselIndex - 1]];
}


-(void) initCarouselWithItem: (SlideModel*) model{
    [self.slideImage setImage: model.slideImage];
    [self.slideTitle setText: model.slideTitle];
    [self.slideText setText: model.slideText];
}

-(void) initView{
    slideArray = [[NSMutableArray alloc] init];
    
    UIImage *image = [UIImage imageNamed: @"slide1.png"];
    slideModel1 = [[SlideModel alloc] initSlideWithId:0 withImage:image withTitle:@"HAVE A DREAM?" withText:@"Turn your dream into achievable goal!"];
    
    image = [UIImage imageNamed: @"slide2.png"];
    slideModel2 = [[SlideModel alloc] initSlideWithId:1 withImage:image withTitle:@"GET ADVICE & MOTIVATION" withText:@"Stay focused and go forward"];
    
    image = [UIImage imageNamed: @"slide3.png"];
    slideModel3 = [[SlideModel alloc] initSlideWithId:2 withImage:image withTitle:@"ACHIEVE YOUR GOAL!" withText:@"Make your dream come true!"];
    
    [slideArray addObject:slideModel1];
    [slideArray addObject:slideModel2];
    [slideArray addObject:slideModel3];
    
    [self initCarouselWithItem: slideArray[0]];
    carouselIndex = 1;
}

-(IBAction)twiShare:(id)sender{
    SLComposeViewController *composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composeController setInitialText:@"Test tweet from Motify.me iOS app"];
    UIImage *image = [UIImage imageNamed:@"slide3.png"];
    [composeController addImage:image];
    [composeController addURL: [NSURL URLWithString: @"www.motify.me"]];
    [self presentViewController:composeController animated:YES completion:nil];
}


-(IBAction)facebookShare:(id)sender{
    SLComposeViewController *composeController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [composeController setInitialText:@"Test facebook from Motify.me iOS app"];
    UIImage *image = [UIImage imageNamed:@"slide2.png"];
    [composeController addImage:image];
    [composeController addURL: [NSURL URLWithString: @"www.motify.me"]];
    [self presentViewController:composeController animated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	[self initView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setArrowLeft:nil];
    [self setArrowRight:nil];
    [self setSlideImage:nil];
    [self setSlideTitle:nil];
    [self setSlideText:nil];
    [super viewDidUnload];
}
@end
