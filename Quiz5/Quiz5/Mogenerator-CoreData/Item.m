#import "Item.h"

@interface Item ()

// Private interface goes here.

@end

@implementation Item

// Custom logic goes here.
+(id)insertItemWithName:(NSString*) name quantity:(NSString*)quantity date:(NSDate*)date {
Item *item = [Item MR_createEntity];
    item.name = name;
    item.quantity = quantity;
    item.date = date;
    return item;
}

@end
