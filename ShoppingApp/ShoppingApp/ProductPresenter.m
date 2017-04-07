//
//  ProductPresenter.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ProductPresenter.h"

@implementation ProductPresenter
id<ProductAPIProtocol> ProductAPI;

-(instancetype)initWithProductAPI:(id<ProductAPIProtocol>) api{
    ProductAPI=api;
    return self;
}


-(void)loaddataHandler{
    ProductDataLoadAPI* Loaddata=[[ProductDataLoadAPI alloc]init];
    [Loaddata loadProductData:^(ProductModel *responseData, NSString *error) {
        if(error==nil){
            
        }else{
            
        }
    }];
}
@end
