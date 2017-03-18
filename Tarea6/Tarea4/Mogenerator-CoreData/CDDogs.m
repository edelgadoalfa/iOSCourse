#import "CDDogs.h"

@interface CDDogs ()

// Private interface goes here.

@end

@implementation CDDogs

+(id)initWithName:(NSString*)name imageName:(NSString*)imageNmae color:(NSString*)color location:(NSString*)location age:(NSNumber*)age contactInformation:(NSString*)contactInformation{
       CDDogs *dogs = [CDDogs MR_createEntity];

        dogs.name = name;
        dogs.image = imageNmae;
        dogs.color = color;
        dogs.location = location;
        dogs.age = age;
        dogs.contactInformation = contactInformation;
    return dogs;
}


@end
