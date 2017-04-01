//
//  AdviceCustomTableViewCell.h
//  BikeProject
//
//  Created by Edgar Delgado on 3/24/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Advice;

@interface AdviceCustomTableViewCell : UITableViewCell
-(void)setupCellWithAdvices:(Advice*)advice;
@end
