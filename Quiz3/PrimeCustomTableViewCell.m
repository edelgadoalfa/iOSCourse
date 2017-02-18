//
//  PrimeCustomTableViewCell.m
//  Quiz3
//
//  Created by Edgar Delgado on 2/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "PrimeCustomTableViewCell.h"

@interface PrimeCustomTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *primeLabel;


@end

@implementation PrimeCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setupCellWithNumber:(NSString*)number{
    self.primeLabel.text = number;
}

@end
