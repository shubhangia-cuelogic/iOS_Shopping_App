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
-(void)loadProductData:(void (^)(id, NSString *))callbackBlock{
    
    NSURL *URL = [NSURL URLWithString:@"https://mobiletest-hackathon.herokuapp.com/getdata/"];
    HTTPRequest* request=[[HTTPRequest alloc]init];
    [request getHttpRequestWithURL:URL completion:^(id respose, NSString * error) {
        callbackBlock(respose,error);
    }];
     }
@end
