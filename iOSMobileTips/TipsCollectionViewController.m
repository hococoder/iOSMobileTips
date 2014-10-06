//
//  TipsCollectionViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 9/22/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "TipsCollectionViewController.h"
#import "TipsCollectionViewCell.h"
#import "TipViewController.h"
#import "NDCollectionViewFlowLayout.h"

@interface TipsCollectionViewController ()

@end

@implementation TipsCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[TipsCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    NDCollectionViewFlowLayout *flow = [[NDCollectionViewFlowLayout alloc] init];
    [self.collectionView setCollectionViewLayout:flow];
//    UICollectionViewFlowLayout *flow = self.collectionView.collectionViewLayout;
    
//    flow.minimumInteritemSpacing = 150;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.tipsArray getCount];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TipsCollectionViewCell *cell = (TipsCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    [[cell titleLabel] setText:[self.tipsArray getTitleAtIndex:indexPath.row]];
    cell.frame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, 200, 50);
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView*)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TipViewController *tipViewController = [storyBoard instantiateViewControllerWithIdentifier:@"tipVC"];
    [tipViewController setTipTitleText:[self.tipsArray getTitleAtIndex:indexPath.row]];
    [tipViewController setTipDescriptionText:[self.tipsArray getTipDescriptionAtIndex:indexPath.row]];
    [tipViewController setTipCodeSegmentText:[self.tipsArray getCodeSegmentAtIndex:indexPath.row]];
    [self.navigationController pushViewController:tipViewController animated:YES];
}

- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(50, 10, 50, 10);
}

//- (UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
