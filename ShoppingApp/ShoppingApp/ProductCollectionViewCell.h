//
//  ProductCollectionViewCell.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCartProtocol.h"
@interface ProductCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) id<CellDelegate>delegate;


@property IBOutlet UIImageView* imgProduct;
@property IBOutlet UILabel* productName;
@property IBOutlet UILabel* productPrice;
@property IBOutlet UILabel* vendorName;
@property IBOutlet UILabel* vendorAddress;
- (IBAction)actionAddToCart:(id)sender;



@end
