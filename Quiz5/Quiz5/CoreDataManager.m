   ///
//  CoreDataManager.m
//  Quiz5
//
//  Created by Edgar Delgado on 3/18/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "Item.h"

@implementation CoreDataManager

+ (void)saveContext {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError *error) {
        if (contextDidSave) {
            NSLog(@"You successfully saved your context.");
        } else if (error) {
            NSLog(@"Error saving context: %@", error.description);
        }
    }];
}

+(NSArray*)getAllItems{
    NSArray *items = [Item MR_findAll];
       if (items.count>0) {
           return items;}else
    return nil;

}





@end
