//
//  ProductPresenter.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductDataLoadAPI.h"
#import "ProductAPIProtocol.h"
@interface ProductPresenter : NSObject
-(instancetype)initWithProductAPI:(id<ProductAPIProtocol>) api;
-(void)loaddataHandler;
@end
