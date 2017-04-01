//
//  ActivityTableViewCell.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "ActivityTableViewCell.h"
#import "Activity.h"

@interface ActivityTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@end

@implementation ActivityTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setupCellWithActivities:(Activity*)activity{
    self.timerLabel.text = activity.timer;
    NSString *dateString =
    [NSDateFormatter localizedStringFromDate:activity.date
                                   dateStyle:NSDateFormatterShortStyle
                                   timeStyle:NSDateFormatterShortStyle];
    self.dateLabel.text = dateString;
}

@end
