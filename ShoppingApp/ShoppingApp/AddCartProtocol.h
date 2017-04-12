//
//  AddCartProtocol.h
//  ShoppingApp
//
//  Created by Cuelogic on 10/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#ifndef AddCartProtocol_h
#define AddCartProtocol_h

@class ProductCollectionViewCell;

#endif /* AddCartProtocol_h */
@protocol CellDelegate <NSObject>
- (void)didClickOnCell:(ProductCollectionViewCell *)cell;
@end
