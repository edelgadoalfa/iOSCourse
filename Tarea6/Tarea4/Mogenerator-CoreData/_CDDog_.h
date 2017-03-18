// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDDog_.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CDDog_ID : NSManagedObjectID {}
@end

@interface _CDDog_ : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CDDog_ID *objectID;

@property (nonatomic, strong, nullable) NSString* image;

@property (nonatomic, strong, nullable) NSString* name;

@end

@interface _CDDog_ (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveImage;
- (void)setPrimitiveImage:(nullable NSString*)value;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

@end

@interface CDDog_Attributes: NSObject 
+ (NSString *)image;
+ (NSString *)name;
@end

NS_ASSUME_NONNULL_END
