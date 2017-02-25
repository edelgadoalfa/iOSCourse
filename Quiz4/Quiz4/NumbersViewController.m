//
//  NumbersViewController.m
//  Quiz4
//
//  Created by Edgar Delgado on 2/25/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "NumbersViewController.h"
#import "MultiplesTableViewCell.h"

@interface NumbersViewController ()
@property (nonatomic,strong) NSMutableArray *numbersArray;
@property(nonatomic,strong) NSString *resultText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *numberLable;

@end

@implementation NumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calcularBtn:(UIButton *)sender
{
    [self initializeNumbersArray];
}
- (void) initializeNumbersArray{
    self.numbersArray = [NSMutableArray new];
    int result = 0;
    int b = [self.numberLable.text intValue];
    for (int x=0; x<=10; x++) {
        result = x * b;
       //s self.resultText = self.numberLable.text + result;
        [self.numbersArray addObject:[NSString stringWithFormat:@"%d",result]];
        
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 150;
}


-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"MultiplesTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"MultiplesTableViewCell"];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.numbersArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MultiplesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MultiplesTableViewCell"];
    
    NSString *numbertoDraw =self.numbersArray[indexPath.row];
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
