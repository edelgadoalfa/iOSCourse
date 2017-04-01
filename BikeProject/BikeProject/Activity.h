//
//  Activity.h
//  BikeProject
//
//  Created by Edgar Delgado on 3/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Activity : RLMObject
@property NSDate *date;
@property NSString *timer;
@end
RLM_ARRAY_TYPE(Activity)
