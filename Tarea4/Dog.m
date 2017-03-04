//
//  Dog.m
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "Dog.h"

@interface Dog()

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *imageName;
@property (nonatomic,strong) NSString *color;
@property (nonatomic,strong) NSString *location;
@property (nonatomic) float age;
@property (nonatomic,strong) NSString *contactInformation;


@end

@implementation Dog

-(id)initWithName:(NSString*)name imageName:(NSString*)imageNmae color:(NSString*)color location:(NSString*)location age:(float) age contactInformation:(NSString*)contactInformation{
    
    if(self = [super init]){
        _name = name;
        _imageName = imageNmae;
        _color = color;
        _location = location;
        _age = age;
        _contactInformation = contactInformation;
        
    }
    return  self;
}
@end
