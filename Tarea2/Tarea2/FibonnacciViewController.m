//
//  FibonnacciViewController.m
//  Tarea2
//
//  Created by Edgar Delgado on 2/21/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "FibonnacciViewController.h"
#import "FibonacciTableViewCell.h"

@interface FibonnacciViewController ()

@property (nonatomic,strong) NSMutableArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FibonnacciViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self fibonacciArray];
    
    // Do any additional setup after loading the view.
}

-(void) fibonacciArray
{
    self.dataSource = [NSMutableArray new];
    int i =2, a = 1, b = 0,fibo;
    int top = 10000;
    
    while(fibo < top) {
        fibo = a + b;
        a = b;
        b = fibo;
            [self.dataSource addObject:[NSString stringWithFormat:@"%d",fibo]];
        i++;
    }
    

}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 190;
}
-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"FibonacciTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"FibonacciTableViewCell"];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FibonacciTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FibonacciTableViewCell"];
    
    NSString *numbertoDraw =self.dataSource[indexPath.row];
    [cell setupCellWithNumber:numbertoDraw];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
