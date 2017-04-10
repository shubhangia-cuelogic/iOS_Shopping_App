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
    ProductDataLoadAPI* Loaddata=[[ProductDataLoadAPI alloc]init];
    [ProductView showLoading];
    [Loaddata loadProductData:^(id responseData, NSString *error) {
        [ProductView hideLoading];
        if(error==nil){
          
             NSDictionary *responseDict = (NSDictionary *) responseData;
            ResponseParser* parser=[[ResponseParser alloc]init];
             NSMutableArray* productList=[parser parseProductList:responseDict];
            [ProductView didProductLoadSuccessfully:productList];
            
            
        }else{
            [ProductView didFailToProductLoad:error];
        }
    }];
}
@end
