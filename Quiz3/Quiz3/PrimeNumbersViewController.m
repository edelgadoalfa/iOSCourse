//
//  PrimeNumbersViewController.m
//  Quiz3
//
//  Created by Edgar Delgado on 2/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "PrimeNumbersViewController.h"
#import "PrimeCustomTableViewCell.h"

@interface PrimeNumbersViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSource;

@end

@implementation PrimeNumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self fillArray];
    // Do any additional setup after loading the view.
}
-(void) fillArray{
    self.dataSource = [NSMutableArray new];
    int maxNum = 1000;
    
    for (int i=1; i<=maxNum; i+=2)
    {
        bool isPrime = YES;
        for (int n=2; n<sqrt(i); n++)
        {
            if (i%n == 0)
            {
                isPrime = NO;
                break;
            }
        }
        if (isPrime)                            {
              [self.dataSource addObject:[NSString stringWithFormat:@"%d",i]];
                   }
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100;
}

-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"PrimeCustomTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"PrimeCustomTableViewCell"];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PrimeCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PrimeCustomTableViewCell"];
  
    NSString *numbertoDraw =self.dataSource[indexPath.row];
    [cell setupCellWithNumber:numbertoDraw];
    return cell;
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
