//
//  ProductList.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductList : NSObject
@property (nonatomic,strong)NSMutableArray* productsInCart;
+ (id)sharedCartList;
@end
