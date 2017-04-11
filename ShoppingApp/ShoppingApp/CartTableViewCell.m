//
//  CartTableViewCell.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "CartTableViewCell.h"

@implementation CartTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)actionRemoveCart:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(didClickOnTableCell:)]) {
        [self.delegate didClickOnTableCell:self];
    }
}
@end
