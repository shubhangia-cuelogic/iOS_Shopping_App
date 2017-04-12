//
//  ResponseParser.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ResponseParser.h"

@implementation ResponseParser

-(NSMutableArray*)parseProductList:(NSDictionary*) responseDict{
    NSMutableArray* productList=[[NSMutableArray alloc]init];
    
    
       for(NSString *key in responseDict.allKeys){
        NSArray *productArray = [responseDict objectForKey:key];
        for(NSDictionary *productDict in productArray){
            ProductModel* bean=[[ProductModel alloc]init];
            
            bean.imgURL = [productDict objectForKey:@"productImg"];
            bean.productName=[productDict objectForKey:@"productname"];
            bean.productPrice=[productDict objectForKey:@"price"];
            bean.vendorName=[productDict objectForKey:@"vendorname"];
            bean.vendorAddress=[productDict objectForKey:@"vendoraddress"];
            [productList addObject:bean];
            
        }
    }
    return productList;
}

@end
