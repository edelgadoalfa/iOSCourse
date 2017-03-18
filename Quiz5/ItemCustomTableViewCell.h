//
//  ItemCustomTableViewCell.h
//  Quiz5
//
//  Created by Edgar Delgado on 3/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Item;

@interface ItemCustomTableViewCell : UITableViewCell
-(void)setupCellWithItems:(Item*)item;

@end
