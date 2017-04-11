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
id<ProductViewProtocol> ProductView;
-(instancetype)initWithProductAPI:(id<ProductAPIProtocol>) api andProductView:(id<ProductViewProtocol>)View{
    ProductAPI=api;
    ProductView=View;
    return self;
}


-(void)loadDataHandler{
    ProductDataLoadAPI* productLoadDataAPI=[[ProductDataLoadAPI alloc]init];
    [ProductView showLoading];
    [productLoadDataAPI loadProductData:^(id responseData, NSString *error) {
        [ProductView hideLoading];
        if(error==nil){
          
             NSDictionary *response = (NSDictionary *) responseData;
             ResponseParser* parser=[[ResponseParser alloc]init];
             NSMutableArray* allProductList=[parser parseProductList:response];
             [ProductView didProductLoadSuccessfully:allProductList];
            
            
        }else{
            [ProductView didFailToProductLoad:error];
        }
    }];
}
@end
