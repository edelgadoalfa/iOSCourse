//
//  RealManager.h
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Category;

@interface RealManager : NSObject
+(RLMResults*)getAllCategory;
+(Category*)getCategoryWithName:(NSString*)name;
+(void)createActivityWithDate:(NSDate*)date time:(NSString*)time;
+(RLMResults*)getActivityHistory;


@end
