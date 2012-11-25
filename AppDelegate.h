//
//  AppDelegate.h
//  motify.me
//
//  Created by Ostap Koziy on 10/2/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryCollectionViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CategoryCollectionViewController *categoryViewController;
@end
