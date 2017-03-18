#import "_Item.h"
#import <MagicalRecord/MagicalRecord.h>

@interface Item : _Item
+(id)insertItemWithName:(NSString*) name quantity:(NSString*)quantity date:(NSDate*)date;
// Custom logic goes here.
@end
