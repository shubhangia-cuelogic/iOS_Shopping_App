//
//  CartTableViewCell.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CartTableViewCell : UITableViewCell
@property IBOutlet UIImageView* imgProduct;
@property IBOutlet UILabel* productName;
@property IBOutlet UILabel* productPrice;
@property IBOutlet UIButton* callVendor;
@property IBOutlet UIButton* removeCart;
@property IBOutlet UILabel* vendorName;
@property IBOutlet UILabel* vendorAddress;
@end
