//
//  UITableViewCell+GetClassName.m
//  Tarea4
//
//  Created by Edgar Delgado on 3/2/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "UITableViewCell+GetClassName.h"

@implementation UITableViewCell (GetClassName)

+(NSString*)getClassName{
    return NSStringFromClass(self);
}
@end
