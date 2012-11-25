//
//  CategoryCollectionViewController.h
//  motify.me
//
//  Created by Ostap Koziy on 11/24/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryViewModel.h"
#import "CategoryCell.h"

@interface CategoryCollectionViewController : UICollectionViewController
@property (strong, nonatomic) IBOutlet UICollectionView *collectionViewCell;

@end
