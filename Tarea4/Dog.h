//
//  Dog.h
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
@property (readonly) NSString *name;
@property (readonly) NSString *imageName;
@property (readonly) NSString *color;
@property (readonly) NSString *location;
@property (readonly) float age;
@property (readonly) NSString *contactInformation;
-(id)initWithName:(NSString*)name imageName:(NSString*)imageNmae color:(NSString*)color location:(NSString*)location age:(float) age contactInformation:(NSString*)contactInformation;
@end
