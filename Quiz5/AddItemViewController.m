//
//  AddItemViewController.m
//  Quiz5
//
//  Created by Edgar Delgado on 3/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "AddItemViewController.h"
#import "Item.h"
#import "CoreDataManager.h"

@interface AddItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textQuantity;

@end

@implementation AddItemViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveButtonToNavigationController];
}

-(void)addSaveButtonToNavigationController{
    UIBarButtonItem *save = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveItem)];
    self.navigationItem.rightBarButtonItem = save;
}

-(void)saveItem{    
    [Item insertItemWithName:self.textName.text quantity:self.textQuantity.text date:[NSDate date]];
      [CoreDataManager saveContext];
    [self.navigationController popViewControllerAnimated:true];
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
