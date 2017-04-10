//
//  ProductCollectionViewCell.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ProductCollectionViewCell.h"

@implementation ProductCollectionViewCell
@synthesize imgProduct;
@synthesize productName;
@synthesize productPrice;
@synthesize vendorName;
@synthesize vendorAddress;
//- (IBAction)actionAddToCart:(id)sender {
//    if (self.delegate && [self.delegate respondsToSelector:@selector(didClickOnCellAtIndex:)]) {
//        [self.delegate didClickOnCellAtIndex:_cellIndex];
//    }
//}
- (IBAction)actionAddToCart:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(didClickOnCell:)]) {
                [self.delegate didClickOnCell:self];
            }
}
@end
