//
//  CartTableViewController.m
//  ShoppingApp
//
//  Created by Cuelogic on 10/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import "CartTableViewController.h"

@interface CartTableViewController ()

@end

@implementation CartTableViewController
{
    IBOutlet UITableView *tblView;
    NSArray* cartList;
}


@synthesize totalPrice;
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"total products in cart: %lu",(unsigned long)[[ProductList sharedCartList] productsInCart].count);
    int total=0;
    cartList = [[ProductList sharedCartList] productsInCart];
   
    for (int i=0; i<cartList.count; i++) {
        ProductModel* bean=cartList[i];
        total=total+bean.productPrice.intValue;
    }
    totalPrice.text=[NSString stringWithFormat:@"Total price: %d", total];
    
    [tblView reloadData];

    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return cartList.count;
}
-(void)didClickOnTableCell:(CartTableViewCell *)cell{

    int total=0;
    [[[ProductList sharedCartList] productsInCart] removeObjectAtIndex:[tblView indexPathForCell:cell].row];
   
     cartList = [[ProductList sharedCartList] productsInCart];
    
    for (int i=0; i<cartList.count; i++) {
        ProductModel* bean=cartList[i];
        total=total+bean.productPrice.intValue;
    }
    totalPrice.text=[NSString stringWithFormat:@"Total price: %d", total];
      [tblView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CartTableViewCell" forIndexPath:indexPath];
    
    ProductModel* bean=cartList[indexPath.row];
    cell.productName.text=bean.productName;
    cell.productPrice.text=bean.productPrice;
    cell.vendorName.text=bean.vendorName;
    cell.vendorAddress.text=bean.vendorAddress;
    [cell.imgProduct sd_setImageWithURL:[NSURL URLWithString:bean.imgURL]
                       placeholderImage:[UIImage imageNamed:@"error.jpeg"]];
    cell.delegate=self;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
