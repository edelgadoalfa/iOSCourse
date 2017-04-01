//
//  MenuViewController.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "MenuViewController.h"
#import "YALContextMenuTableView.h"
#import "YALNavigationBar.h"
#import "ContextMenuCell.h"
#import "AdvicesViewController.h"
#import <Realm/Realm.h>
#import "RealManager.h"
#import "Category.h"
#import "ActivityViewController.h"

static NSString *const menuCellIdentifier = @"rotationCell";

@interface MenuViewController ()<
UITableViewDelegate,
UITableViewDataSource,
YALContextMenuTableViewDelegate
>
@property (nonatomic, strong) YALContextMenuTableView* contextMenuTableView;
@property (nonatomic, strong) NSMutableArray *menuTitles;
@property (nonatomic, strong) NSMutableArray *menuIcons;
@property (nonatomic,strong) RLMResults *categoryArray;
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;


@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.categoryArray = [RealManager getAllCategory];
    [self initMenu];
     [self.navigationController setValue:[[YALNavigationBar alloc]init] forKeyPath:@"navigationBar"];
    self.mainImage.image = [UIImage imageNamed:@"main"];
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initMenu{
    self.menuTitles = [NSMutableArray new];
    self.menuIcons = [NSMutableArray new];
    for(Category *category in self.categoryArray){
        [self.menuTitles addObject:category.name];
         [self.menuIcons addObject:[UIImage imageNamed:category.imageName]];
    
    }
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.menuTitles.count;
}

- (UITableViewCell *)tableView:(YALContextMenuTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ContextMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:menuCellIdentifier forIndexPath:indexPath];
    
    if (cell) {
        cell.backgroundColor = [UIColor clearColor];
        cell.menuTitleLabel.text = [self.menuTitles objectAtIndex:indexPath.row];
        cell.menuImageView.image = [self.menuIcons objectAtIndex:indexPath.row];
    }
    
    return cell;
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    //should be called after rotation animation completed
    [self.contextMenuTableView reloadData];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    [self.contextMenuTableView updateAlongsideRotation];
}

- (void)viewWillTransitionToSize:(CGSize)size
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    
    [coordinator animateAlongsideTransition:nil completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        //should be called after rotation animation completed
        [self.contextMenuTableView reloadData];
    }];
    [self.contextMenuTableView updateAlongsideRotation];
    
}
- (void)contextMenuTableView:(YALContextMenuTableView *)contextMenuTableView didDismissWithIndexPath:(NSIndexPath *)indexPath{

    AdvicesViewController *detailsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AdvicesDetails"];
    detailsViewController.categoryName = self.menuTitles[indexPath.row];
    [self.navigationController pushViewController:detailsViewController animated:true];

}

#pragma mark - UITableViewDataSource, UITableViewDelegate

- (void)tableView:(YALContextMenuTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView dismisWithIndexPath:indexPath];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65;
}
- (IBAction)activityMenu:(id)sender {
    ActivityViewController *detailsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ActivityVC"];
    [self.navigationController pushViewController:detailsViewController animated:true];

}


- (IBAction)presentMenuButtonTapped:(UIBarButtonItem *)sender {
    // init YALContextMenuTableView tableView
    if (!self.contextMenuTableView) {
        self.contextMenuTableView = [[YALContextMenuTableView alloc]initWithTableViewDelegateDataSource:self];
        self.contextMenuTableView.animationDuration = 0.15;
        //optional - implement custom YALContextMenuTableView custom protocol
        self.contextMenuTableView.yalDelegate = self;
        //optional - implement menu items layout
        self.contextMenuTableView.menuItemsSide = Right;
        self.contextMenuTableView.menuItemsAppearanceDirection = FromTopToBottom;
        
        //register nib
        UINib *cellNib = [UINib nibWithNibName:@"ContextMenuCell" bundle:nil];
        [self.contextMenuTableView registerNib:cellNib forCellReuseIdentifier:menuCellIdentifier];
    }
    
    // it is better to use this method only for proper animation
    [self.contextMenuTableView showInView:self.navigationController.view withEdgeInsets:UIEdgeInsetsZero animated:YES];
}


@end
