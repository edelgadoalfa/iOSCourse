//
//  CoreDataManager.h
//  Quiz5
//
//  Created by Edgar Delgado on 3/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataManager : NSObject
+ (void)saveContext;
+(NSArray*)getAllItems;
@end
