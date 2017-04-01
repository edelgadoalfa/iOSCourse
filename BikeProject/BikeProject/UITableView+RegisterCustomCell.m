//
//  UITableView+RegisterCustomCell.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/24/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//


#import "UITableView+RegisterCustomCell.h"

@implementation UITableView (RegisterCustomCell)

-(void)registerCustomCellWithName:(NSString*)name{
    UINib *nib = [UINib nibWithNibName:name bundle:nil];
    [self registerNib:nib forCellReuseIdentifier:name];
}

@end

