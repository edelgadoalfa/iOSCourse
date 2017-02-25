//
//  MultiplesTableViewCell.m
//  Quiz4
//
//  Created by Edgar Delgado on 2/25/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "MultiplesTableViewCell.h"
@interface MultiplesTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end

@implementation MultiplesTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void) setupCellWithNumber:(NSString*)number{
    self.numberLabel.text= number;
}


@end
