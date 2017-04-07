//
//  ProductDataLoadAPIProtocol.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ProductDataLoadAPI.h"
#import "AFNetworking.h"
#import "HTTPRequest.h"
@implementation ProductDataLoadAPI
-(void)loadProductData:(void (^)(ProductModel *, NSString *))callbackBlock{
    
//    NSString *string = @"https://mobiletest-hackathon.herokuapp.com/getdata/";
//    [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:string parameters:nil error:nil];
    
    NSURL *URL = [NSURL URLWithString:@"https://mobiletest-hackathon.herokuapp.com/getdata/"];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject)
     
    {
        callbackBlock(responseObject,nil);
        
    }failure:^(NSURLSessionTask *myOperation, NSError *error)
     
    {
         callbackBlock(nil,error.description);
        
    }];}
@end
