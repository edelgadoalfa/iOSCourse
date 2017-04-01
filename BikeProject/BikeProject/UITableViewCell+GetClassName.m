//
//  UITableViewCell+GetClassName.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/24/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "UITableViewCell+GetClassName.h"

@implementation UITableViewCell (GetClassName)

+(NSString*)getClassName{
    return NSStringFromClass(self);
}
@end

