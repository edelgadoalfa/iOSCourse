//
//  DogsTableViewCell.m
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "DogsTableViewCell.h"
#import "Dog.h"

@interface DogsTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *DogNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *DogImageView;

@end

@implementation DogsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setupCellWithDog:(Dog*)Dog{
    self.DogNameLabel.text = Dog.name;
    self.DogImageView.image = [UIImage imageNamed: Dog.imageName];

}
@end
