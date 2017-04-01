//
//  Category.h
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "Advice.h"

@interface Category : RLMObject
@property NSString *name;
@property NSString *imageName;
@property RLMArray<Advice*><Advice> *adviceArray;
@end
