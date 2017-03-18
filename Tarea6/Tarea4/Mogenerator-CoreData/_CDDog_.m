// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDog_.m instead.

#import "_CDDog_.h"

@implementation CDDog_ID
@end

@implementation _CDDog_

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDDog_" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDDog_";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDDog_" inManagedObjectContext:moc_];
}

- (CDDog_ID*)objectID {
	return (CDDog_ID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic image;

@dynamic name;

@end

@implementation CDDog_Attributes 
+ (NSString *)image {
	return @"image";
}
+ (NSString *)name {
	return @"name";
}
@end

