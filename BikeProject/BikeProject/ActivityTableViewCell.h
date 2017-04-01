//
//  ActivityTableViewCell.h
//  BikeProject
//
//  Created by Edgar Delgado on 3/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Activity;

@interface ActivityTableViewCell : UITableViewCell
-(void)setupCellWithActivities:(Activity*)activity;
@end
