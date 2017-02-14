//
//  NumbersTableViewController.m
//  Tarea1
//
//  Created by Edgar Delgado on 2/8/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "NumbersTableViewController.h"

@interface NumbersTableViewController ()
@property(nonatomic,strong) NSMutableArray *numbersArray;

@end

@implementation NumbersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeNumbersArray];

   }
- (void) initializeNumbersArray{
    self.numbersArray = [NSMutableArray new];
    for (int x=0; x<=100; x++) {
        NSString *multiplesNumber = [NSString stringWithFormat:@"8x%d", x];
        NSDictionary *numbersDictionary = [[NSDictionary alloc] initWithObjects:@[multiplesNumber,[NSNumber numberWithInt:(8*x)]] forKeys:@[@"multiplesNumber", @"operationResult"]];
        [self.numbersArray addObject:numbersDictionary];
        
    }
    
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
  return self.numbersArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *currentResult= self.numbersArray[indexPath.row];
    
    cell.textLabel.text = [currentResult valueForKey:@"multiplesNumber"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", [[currentResult valueForKey:@"operationResult"] intValue]];
    
    return cell;
}

/*

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}*/


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
