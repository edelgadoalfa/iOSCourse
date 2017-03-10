//
//  DogsViewController.m
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "DogsViewController.h"
#import "DogsTableViewCell.h"
#import "Dog.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "DetailsViewController.h"
#import <Realm/Realm.h>
#import "RealManager.h"

@interface DogsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) RLMResults *dogArray;

@end

@implementation DogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[DogsTableViewCell getClassName]];
    self.dogArray = [RealManager getAllDogs];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dogArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DogsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[DogsTableViewCell getClassName]];
    Dog *currentDog = self.dogArray[indexPath.row];
    [cell setupCellWithDog: currentDog];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailsViewController *detailsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DogDetail"];
    Dog *dogSelected = self.dogArray[indexPath.row];
    detailsViewController.dogSelected = dogSelected;
    [self.navigationController pushViewController:detailsViewController animated:true];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
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
