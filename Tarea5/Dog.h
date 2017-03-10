//
//  Dog.h
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Dog : RLMObject
@property NSString *name;
@property NSString *imageName;
@property NSString *color;
@property NSString *location;
@property float age;
@property NSString *contactInformation;
//-(id)initWithName:(NSString*)name imageName:(NSString*)imageNmae color:(NSString*)color location:(NSString*)location age:(float) age contactInformation:(NSString*)contactInformation;
@end
RLM_ARRAY_TYPE(Dog)
