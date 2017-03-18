// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDogs.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CDDogsID : NSManagedObjectID {}
@end

@interface _CDDogs : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CDDogsID *objectID;

@property (nonatomic, strong, nullable) NSNumber* age;

@property (atomic) float ageValue;
- (float)ageValue;
- (void)setAgeValue:(float)value_;

@property (nonatomic, strong, nullable) NSString* color;

@property (nonatomic, strong, nullable) NSString* contactInformation;

@property (nonatomic, strong, nullable) NSString* image;

@property (nonatomic, strong, nullable) NSString* location;

@property (nonatomic, strong, nullable) NSString* name;

@end

@interface _CDDogs (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSNumber*)primitiveAge;
- (void)setPrimitiveAge:(nullable NSNumber*)value;

- (float)primitiveAgeValue;
- (void)setPrimitiveAgeValue:(float)value_;

- (nullable NSString*)primitiveColor;
- (void)setPrimitiveColor:(nullable NSString*)value;

- (nullable NSString*)primitiveContactInformation;
- (void)setPrimitiveContactInformation:(nullable NSString*)value;

- (nullable NSString*)primitiveImage;
- (void)setPrimitiveImage:(nullable NSString*)value;

- (nullable NSString*)primitiveLocation;
- (void)setPrimitiveLocation:(nullable NSString*)value;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

@end

@interface CDDogsAttributes: NSObject 
+ (NSString *)age;
+ (NSString *)color;
+ (NSString *)contactInformation;
+ (NSString *)image;
+ (NSString *)location;
+ (NSString *)name;
@end

NS_ASSUME_NONNULL_END
