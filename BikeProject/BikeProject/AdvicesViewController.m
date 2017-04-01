//
//  AdvicesViewController.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "AdvicesViewController.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "Category.h"
#import "AdviceCustomTableViewCell.h"
#import <Realm/Realm.h>
#import "RealManager.h"
#import "AdviceDetailsViewController.h"

@interface AdvicesViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) Category *categorySelected;

@end

@implementation AdvicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[AdviceCustomTableViewCell getClassName]];
  self.categorySelected = [RealManager getCategoryWithName:self.categoryName];
    // Do any additional setup after loading the view.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categorySelected.adviceArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AdviceCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[AdviceCustomTableViewCell getClassName]];
    Advice *advice = self.categorySelected.adviceArray[indexPath.row];
    [cell setupCellWithAdvices:advice];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AdviceDetailsViewController *detailsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AdviceDetailsVC"];
    Advice *adviceSelected = self.categorySelected.adviceArray[indexPath.row];
    detailsViewController.adviceSelected = adviceSelected;
    [self.navigationController pushViewController:detailsViewController animated:true];
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
