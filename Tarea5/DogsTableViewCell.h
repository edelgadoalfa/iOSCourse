//
//  DogsTableViewCell.h
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Dog;

@interface DogsTableViewCell : UITableViewCell
-(void) setupCellWithDog:(Dog*)Dog;
@end
