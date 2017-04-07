//
//  ProductViewController.m
//  ShoppingApp
//
//  Created by Cuelogic on 07/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()<ProductAPIProtocol>{
    ProductPresenter* presenter;
    id<ProductAPIProtocol> api;
}

@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    presenter=[[ProductPresenter alloc]initWithProductAPI:[[ProductDataLoadAPI alloc]init]];
    [presenter loaddataHandler];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
