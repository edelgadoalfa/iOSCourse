//
//  RealManager.m
//  Tarea4
//
//  Created by Edgar Delgado on 3/9/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "RealManager.h"
#import "Dog.h"

@implementation RealManager

+(RLMResults*)getAllDogs{
    RLMResults<Dog *> *dogs = [Dog allObjects];
    if(dogs.count>0){
        
        return dogs;
    }
    [RealManager insertDogs];
    return [RealManager insertDogs];
}

+(Dog *)createDogWithNmae:(NSString*)name imageName:(NSString*)imageName color:(NSString*)color location:(NSString*)location age:(float)age contact:(NSString*)contact{
    Dog *dogs = [[Dog alloc] init];
    dogs.name = name;
    dogs.imageName = imageName;
    dogs.color = color;
    dogs.location = location;
    dogs.age = age;
    dogs.contactInformation = contact;
    return dogs;
}

+(RLMResults*)insertDogs{
    Dog *aDog = [RealManager createDogWithNmae:@"Gordo" imageName:@"bullterrier" color:@"White" location:@"Heredia" age:4 contact:@"gordo@gmail.com"];
     Dog *bDog = [RealManager createDogWithNmae:@"Thor" imageName:@"bulldog" color:@"Brown" location:@"San José" age:10 contact:@"thor@gmail.com"];
     Dog *cDog = [RealManager createDogWithNmae:@"Atenea" imageName:@"americanstandford" color:@"Black" location:@"Puntarenas" age:4 contact:@"ateneas@gmail.com"];
     Dog *dDog = [RealManager createDogWithNmae:@"Zeus" imageName:@"dalmata" color:@"Black/White" location:@"Limón" age:3 contact:@"zeus@gmail.com"];
     Dog *eDog = [RealManager createDogWithNmae:@"Apolo" imageName:@"doberman" color:@"White" location:@"Guanacaste" age:1 contact:@"apolo@gmail.com"];
     Dog *fDog = [RealManager createDogWithNmae:@"Ares" imageName:@"labrador" color:@"Yellow" location:@"Cartago" age:11 contact:@"ares@gmail.com"];
     Dog *gDog = [RealManager createDogWithNmae:@"Hermes" imageName:@"pastoraleman" color:@"Yellow" location:@"Alajuela" age:4 contact:@"hermes@gmail.com"];
     Dog *hDog = [RealManager createDogWithNmae:@"Poseidon" imageName:@"pitbull" color:@"White" location:@"Perez Zeledón" age:4 contact:@"poseidon@gmail.com"];
     Dog *iDog = [RealManager createDogWithNmae:@"Atenas" imageName:@"rottweiler" color:@"Black" location:@"Palmares" age:7 contact:@"atenas@gmail.com"];
     Dog *jDog = [RealManager createDogWithNmae:@"Perseo" imageName:@"siberian" color:@"Black" location:@"Heredia" age:5 contact:@"perseo@gmail.com"];
    
    [RealManager saveRealObject:aDog];
    [RealManager saveRealObject:bDog];
    [RealManager saveRealObject:cDog];
    [RealManager saveRealObject:dDog];
    [RealManager saveRealObject:eDog];
    [RealManager saveRealObject:fDog];
    [RealManager saveRealObject:gDog];
    [RealManager saveRealObject:hDog];
    [RealManager saveRealObject:iDog];
    [RealManager saveRealObject:jDog];
    
    return [RealManager getAllDogs];
    
}

+(void)saveRealObject:(RLMObject*)realmObject{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}
+(Dog*)getDogWithName:(NSString*)name{
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@",name];
    RLMResults<Dog *> *dogs = [Dog objectsWithPredicate:predicate];
    if(dogs.count>0){
        return dogs.firstObject;
    }
    return nil;
}
@end
