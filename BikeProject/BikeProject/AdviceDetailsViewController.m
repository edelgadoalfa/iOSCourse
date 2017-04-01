//
//  AdviceDetailsViewController.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/27/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "AdviceDetailsViewController.h"

@interface AdviceDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *adviceImage;
@property (weak, nonatomic) IBOutlet UITextView *adviceTextView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

@implementation AdviceDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       self.adviceTextView.text = self.adviceSelected.details;
    self.adviceImage.image = [UIImage imageNamed:self.adviceSelected.iconName];
    self.titleLabel.text = self.adviceSelected.title;
    // Do any additional setup after loading the view.
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
