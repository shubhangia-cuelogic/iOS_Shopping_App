//
//  ProductViewController.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ViewController.h"
#import "ProductPresenter.h"
@interface ProductViewController : ViewController
@property (nonatomic,weak)id <ProductAPIProtocol> delegate;
@end
