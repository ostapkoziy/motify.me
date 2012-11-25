//
//  CategoryCollectionViewController.m
//  motify.me
//
//  Created by Ostap Koziy on 11/24/12.
//  Copyright (c) 2012 Ostap Koziy. All rights reserved.
//

#import "CategoryCollectionViewController.h"

@interface CategoryCollectionViewController (){
    NSArray *categoryArray;
    NSIndexPath *headerIndexPath;
}

@end

@implementation CategoryCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    #pragma mark - UICollectionViewDataSource
    [super viewDidLoad];
	categoryArray = [NSArray arrayWithObjects:
                     [[CategoryViewModel alloc] initWithCategoryName:@"Health & Fitness" imageName:@"sport.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Skills & Lifestyle" imageName:@"skills.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Career & Business" imageName:@"career.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Finance & Goods" imageName:@"finance.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Family & Relationships" imageName:@"family.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Travel & Adventure" imageName:@"travel.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Fun & Creativity" imageName:@"fun.png"],
                     [[CategoryViewModel alloc] initWithCategoryName:@"Social & Non-profit" imageName:@"social.png"],
                     nil];
    self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [categoryArray count] / 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CategoryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
    CategoryViewModel *category = [categoryArray objectAtIndex:(indexPath.section*2 + indexPath.row)];
    cell.name.text = category.name;
    cell.image.image = category.image;
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setCollectionViewCell:nil];

    [super viewDidUnload];
}
@end
