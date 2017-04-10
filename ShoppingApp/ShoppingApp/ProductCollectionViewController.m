//
//  ProductCollectionViewController.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ProductCollectionViewController.h"

@interface ProductCollectionViewController ()<ProductViewProtocol>{
 
}

@end

@implementation ProductCollectionViewController{
    ProductPresenter* presenter;
    id<ProductAPIProtocol> api;
    NSMutableArray* allProducts;
    
    IBOutlet UICollectionView* productCollectionView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
}


static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    presenter=[[ProductPresenter alloc]initWithProductAPI:[[ProductDataLoadAPI alloc]init] andProductView:self];
    [presenter loadDataHandler];
    

    // Do any additional setup after loading the view.
}
-(void) showActivityIndicator {
    [activityIndicator setHidden:NO];
    [activityIndicator startAnimating];
    self.view.userInteractionEnabled = NO;
}

-(void) hideActivityIndicator {
    [activityIndicator stopAnimating];
    self.view.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)didProductLoadSuccessfully:(NSMutableArray *)_productList{
      allProducts = [[NSMutableArray alloc]initWithArray:_productList];
    
    dispatch_async(dispatch_get_main_queue(),^{
      [productCollectionView reloadData];
    });
    
    
}
-(void)didFailToProductLoad:(NSString *)strMessage{
    
}
-(void)showLoading{
    [self showActivityIndicator];
}
-(void)hideLoading{
    [self hideActivityIndicator];
}

#pragma mark

- (void)didClickOnCell:(ProductCollectionViewCell *)cell{
    
    [[[ProductList sharedCartList] productsInCart] addObject:allProducts[[productCollectionView indexPathForCell:cell].row]];
    NSLog(@"total products in cart: %lu",(unsigned long)[[ProductList sharedCartList] productsInCart].count);
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return allProducts.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"ProductCollectionViewCell";
    ProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    ProductModel* bean=allProducts[indexPath.row];
    cell.productPrice.text=bean.productPrice;
    cell.productName.text=bean.productName;
    cell.vendorName.text=bean.vendorName;
    cell.vendorAddress.text=bean.vendorAddress;
   [cell.imgProduct sd_setImageWithURL:[NSURL URLWithString:bean.imgURL]
                 placeholderImage:[UIImage imageNamed:@"error.jpeg"]];
    
    cell.delegate = self;
    //cell.cellIndex = indexPath.row;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

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
