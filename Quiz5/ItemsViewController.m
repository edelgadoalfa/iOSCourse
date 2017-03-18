//
//  ItemsViewController.m
//  Quiz5
//
//  Created by Edgar Delgado on 3/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "ItemsViewController.h"
#import "CoreDataManager.h"
#import "Item.h"   
#import "ItemCustomTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"

@interface ItemsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSArray *items;



@end

@implementation ItemsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self addItemButton];
    [self.tableView registerCustomCellWithName:[ItemCustomTableViewCell getClassName]];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    self.items = [CoreDataManager getAllItems];
    //self.title = self.item;
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)addItemButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItemAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}
-(void)addItemAction{
    ItemsViewController *addItemViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"addItemViewController"];
    [self.navigationController pushViewController:addItemViewController animated:true];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   ItemCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCustomTableViewCell.h"];
    Item *items = self.items[indexPath.row];
    [cell setupCellWithItems:items];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
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
