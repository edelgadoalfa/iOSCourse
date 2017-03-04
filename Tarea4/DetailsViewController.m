//
//  DetailsViewController.m
//  Tarea4
//
//  Created by Edgar Delgado on 3/2/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "DetailsViewController.h"
#import "Dog.h"
#import <QuartzCore/QuartzCore.h>

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblAge;
@property (weak, nonatomic) IBOutlet UILabel *lblContact;
@property (weak, nonatomic) IBOutlet UILabel *lblColor;
@property (weak, nonatomic) IBOutlet UIImageView *dogImage;
@property (weak, nonatomic) IBOutlet UILabel *lblLocation;
@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.dogSelected.name;
    self.dogImage.layer.cornerRadius = 30;
    self.dogImage.clipsToBounds = YES;
    self.lblAge.text = [NSString stringWithFormat:@"%s %.f %s","Age:", self.dogSelected.age,"years"];
    self.lblColor.text = [NSString stringWithFormat:@"%@ %@", @"Color:", self.dogSelected.color];
    self.lblContact.text =[NSString stringWithFormat:@"%@ %@", @"Information:", self.dogSelected.contactInformation];
    self.dogImage.image = [UIImage imageNamed:self.dogSelected.imageName];
    self.lblLocation.text = [NSString stringWithFormat:@"%@ %@", @"Address:", self.dogSelected.location];
    
    
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
