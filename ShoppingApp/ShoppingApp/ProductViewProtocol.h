//
//  ProductViewProtocol.h
//  ShoppingApp
//
//  Created by Cuelogic on 10/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol ProductViewProtocol <NSObject>

- (void)showLoading;
- (void)hideLoading;
- (void)didProductLoadSuccessfully:(NSMutableArray*) productList;
- (void)didFailToProductLoad:(NSString *)strMessage;

@end
