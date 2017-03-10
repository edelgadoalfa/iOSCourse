//
//  RealManager.h
//  Tarea4
//
//  Created by Edgar Delgado on 3/9/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Dog;

@interface RealManager : NSObject
+(RLMResults*)getAllDogs;
+(Dog*)getDogWithName:(NSString*)name;


@end
