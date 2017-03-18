//
//  CoreDataManager.m
//  Tarea4
//
//  Created by Edgar Delgado on 3/17/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "CDDogs.h"  

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


+(NSArray*)getAllDogs{
    NSArray *dogs = [CDDogs MR_findAllSortedBy:@"name" ascending:true];
    if (dogs.count>0) {
        return dogs;
    }
    return [CoreDataManager insertDogs];
}

+(NSArray*)insertDogs{
    
    
    [CDDogs initWithName:@"Gordo" imageName:@"bullterrier" color:@"White" location:@"Heredia" age:@4 contactInformation:@"gordo@gmail.com"];
    
    [CDDogs initWithName:@"Thor" imageName:@"bulldog" color:@"Brown" location:@"San José" age:@10 contactInformation:@"thor@gmail.com"];
    [CDDogs initWithName:@"Atenea" imageName:@"americanstandford" color:@"Black/White" location:@"Puntarenas" age:@2 contactInformation:@"atenea@gmail.com"];
    [CDDogs initWithName:@"Zeus" imageName:@"dalmata" color:@"Black" location:@"Guanacaste" age:@1 contactInformation:@"zeus@gmail.com"];
    [CDDogs initWithName:@"Apolo" imageName:@"doberman" color:@"Black" location:@"Alajuela" age:@1 contactInformation:@"apolo@gmail.com"];
    [CDDogs initWithName:@"Ares" imageName:@"labrador" color:@"Yellow" location:@"Alajuela" age:@11 contactInformation:@"ares@gmail.com"];
    [CDDogs initWithName:@"Hermes" imageName:@"pastoraleman" color:@"Yellow" location:@"Cartago" age:@8 contactInformation:@"hermes@gmail.com"];
    [CDDogs initWithName:@"Poseidon" imageName:@"pitbull" color:@"White" location:@"Perez Zeledón" age:@6 contactInformation:@"poseidon@gmail.com"];
    [CDDogs initWithName:@"Ateneas" imageName:@"rottweiler" color:@"Black" location:@"Palamares" age:@7 contactInformation:@"ateneas@gmail.com"];
    [CDDogs initWithName:@"Perseo" imageName:@"siberian" color:@"Black" location:@"Heredia" age:@5 contactInformation:@"perseo@gmail.com"];
    

       [CoreDataManager saveContext];
    return [CoreDataManager getAllDogs];
}



@end
