//
//  ResponseParser.h
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductModel.h"
#import "ProductList.h"
@interface ResponseParser : NSObject
-(NSMutableArray*)parseProductList:(NSDictionary*) productDir;
@end
