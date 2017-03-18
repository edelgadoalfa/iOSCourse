//
//  ItemCustomTableViewCell.m
//  Quiz5
//
//  Created by Edgar Delgado on 3/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "ItemCustomTableViewCell.h"
#import "Item.h"

@interface ItemCustomTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *textName;
@property (weak, nonatomic) IBOutlet UILabel *textQuantity;
@property (weak, nonatomic) IBOutlet UILabel *textDate;

@end

@implementation ItemCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setupCellWithItems:(Item*)item{
    self.textName.text = item.name;
    NSString *dateString =
    [NSDateFormatter localizedStringFromDate:item.date
                                   dateStyle:NSDateFormatterShortStyle
                                   timeStyle:NSDateFormatterShortStyle];
    self.textDate.text = dateString;
    self.textQuantity.text = item.quantity;
}

@end
