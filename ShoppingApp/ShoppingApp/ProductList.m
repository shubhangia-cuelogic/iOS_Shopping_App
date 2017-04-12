//
//  ProductList.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ProductList.h"

@implementation ProductList
@synthesize productsInCart;

+ (id)sharedCartList{
    
    static ProductList *productListInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        productListInstance = [[ProductList alloc]init];
    });
    return productListInstance;
}

- (id)init {
    if (self = [super init]) {
        productsInCart=[[NSMutableArray alloc]initWithCapacity:1];

    }
    return self;
}

@end
