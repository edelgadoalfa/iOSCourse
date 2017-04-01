//
//  YALNavigationBar.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//
static float const defaultHeight = 65.f;

#import "YALNavigationBar.h"

@implementation YALNavigationBar

- (CGSize)sizeThatFits:(CGSize)size {
    
    CGSize amendedSize = [super sizeThatFits:size];
    amendedSize.height = defaultHeight;
    
    return amendedSize;
}

@end
