//
//  ProductAPIProtocol.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#ifndef ProductAPIProtocol_h
#define ProductAPIProtocol_h


#endif /* ProductAPIProtocol_h */
#import "ProductModel.h"
@protocol ProductAPIProtocol<NSObject>

- (void)loadProductData:(void (^)(ProductModel *responseData, NSString *error))callbackBlock;

@end
