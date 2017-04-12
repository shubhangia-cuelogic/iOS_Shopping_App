//
//  DelecteFromCartProtocol.h
//  ShoppingApp
//
//  Created by Cuelogic on 10/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#ifndef DelecteFromCartProtocol_h
#define DelecteFromCartProtocol_h


@class CartTableViewCell;
#endif /* DelecteFromCartProtocol_h */
@protocol TableDelegate <NSObject>
- (void)didClickOnTableCell:(CartTableViewCell *)cell;
@end
