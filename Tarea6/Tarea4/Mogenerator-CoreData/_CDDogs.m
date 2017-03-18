// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDogs.m instead.

#import "_CDDogs.h"

@implementation CDDogsID
@end

@implementation _CDDogs

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDDogs" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDDogs";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDDogs" inManagedObjectContext:moc_];
}

- (CDDogsID*)objectID {
	return (CDDogsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"ageValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"age"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic age;

- (float)ageValue {
	NSNumber *result = [self age];
	return [result floatValue];
}

- (void)setAgeValue:(float)value_ {
	[self setAge:@(value_)];
}

- (float)primitiveAgeValue {
	NSNumber *result = [self primitiveAge];
	return [result floatValue];
}

- (void)setPrimitiveAgeValue:(float)value_ {
	[self setPrimitiveAge:@(value_)];
}

@dynamic color;

@dynamic contactInformation;

@dynamic image;

@dynamic location;

@dynamic name;

@end

@implementation CDDogsAttributes 
+ (NSString *)age {
	return @"age";
}
+ (NSString *)color {
	return @"color";
}
+ (NSString *)contactInformation {
	return @"contactInformation";
}
+ (NSString *)image {
	return @"image";
}
+ (NSString *)location {
	return @"location";
}
+ (NSString *)name {
	return @"name";
}
@end

