//
//  HTTPRequest.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "HTTPRequest.h"
@interface HTTPRequest : NSObject
-(void)GetHttpRequestWithURL:(NSURL*)url completion:(void (^)(id, NSString *))callbackBlock;
@end
