//
//  ColorsTableViewController.m
//  Quiz2
//
//  Created by Edgar Delgado on 2/11/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "ColorsTableViewController.h"

@interface ColorsTableViewController ()
@property(nonatomic,strong) NSMutableArray *numbersArray;
@end

@implementation ColorsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeNumbersArray];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) initializeNumbersArray{
    self.numbersArray = [NSMutableArray new];
    NSString *color = @"Negro";
    for (int x=0; x<5000; x++) {
        if(x%2){
            color = @"redColor";}
        else{
         color = @"blueColor";
        }
        NSDictionary *numbersDictionary = [[NSDictionary alloc] initWithObjects:@[color,[NSString stringWithFormat:@"%d",x] ]forKeys:@[@"color", @"number"]];
        [self.numbersArray addObject:numbersDictionary];
    
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.numbersArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *currentResult= self.numbersArray[indexPath.row];
    cell.textLabel.text = [currentResult valueForKey:@"number"];
    NSString *cellColor = [currentResult valueForKey:@"color"];
    cell.textLabel.backgroundColor = [UIColor performSelector:NSSelectorFromString(cellColor)];
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
