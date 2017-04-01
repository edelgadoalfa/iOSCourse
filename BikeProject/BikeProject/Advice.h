//
//  Advice.h
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Category;

@interface Advice : RLMObject
@property NSString *title;
@property  NSString *iconName;
@property  NSString *details;
@property Category *category;



@end
RLM_ARRAY_TYPE(Advice)
