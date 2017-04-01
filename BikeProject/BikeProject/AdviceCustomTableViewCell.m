//
//  AdviceCustomTableViewCell.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/24/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "AdviceCustomTableViewCell.h"
#import "Advice.h"

@interface AdviceCustomTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *adviceImage;

@end

@implementation AdviceCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCellWithAdvices:(Advice*)advice{
    self.titleLabel.text = advice.title;
    self.adviceImage.image = [UIImage imageNamed:advice.iconName];
}

@end
