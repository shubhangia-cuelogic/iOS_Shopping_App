//
//  HTTPRequest.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "HTTPRequest.h"

@implementation HTTPRequest
-(void)GetHttpRequestWithURL:(NSURL*)url completion:(void (^)(id, NSString *))callbackBlock{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject)
     
     {
         callbackBlock(responseObject,nil);
         
     }failure:^(NSURLSessionTask *myOperation, NSError *error)
     
     {
         callbackBlock(nil,error.description);
         
     }];
}
@end
