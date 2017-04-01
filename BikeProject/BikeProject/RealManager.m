//
//  RealManager.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/23/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "RealManager.h"
#import "Category.h"    
#import "Advice.h"
#import "Activity.h"

@implementation RealManager

+(RLMResults*)getAllCategory{
    RLMResults<Category *> *categories = [Category allObjects];
    if(categories.count>0){
        
        return categories;
    }
    return [RealManager insertCategories];
}

+(Category *)createCategoryWithNmae:(NSString*)name imageName:(NSString*)imageName{
    
    Category *category = [[Category alloc] init];
    category.name = name;
    category.imageName = imageName;
    return category;
}
+(RLMResults*)insertCategories{
    Category *firstCategory = [RealManager createCategoryWithNmae:@"Advice Buddy"  imageName:@"buddy"];
    Category *secondCategory = [RealManager createCategoryWithNmae:@"Advice Food"  imageName:@"food"];
    Category *thirdCategory = [RealManager createCategoryWithNmae:@"Advice Routes"  imageName:@"routes"];
    
    [RealManager saveRealObject:firstCategory];
    [RealManager saveRealObject:secondCategory];
    [RealManager saveRealObject:thirdCategory];
    [RealManager createAdviceWithTitle:@"Start with your posture off the bicycle" details:@"Your cycling workout is only one part of your day, but your body will be influenced by its position 24 hours a day, every day. Therefore, if you’re not doing so already, you should remind yourself about maintaining good posture every once in a while, whether you’re on the bike or not. This will prepare you physically and mentally, and also make you more aware of the way you hold your body – these benefits extend to the time you’re on the bike." icon:@"buddy1" category:firstCategory];
    [RealManager createAdviceWithTitle:@"Your bike is an extension of your body" details:@"Now, as you get on your bike, its shape and set up will influence the way you position your body. Therefore, it is important that your bike fits you well. When you shop for a new bike, it is good to ask advice for getting the right sized frame. When you set up your bike, make sure your saddle height is right – your feet should be very slightly bent when the pedals are in the lowest position. The height of your handlebar depends on your preference and aims – racers usually have it a couple of inches below saddle height, while tourers often have it level with the saddle. The important thing is that you feel that the setup of the bike allows you to transform your energy into efficient movement." icon:@"buddy2" category:firstCategory];
    [RealManager createAdviceWithTitle:@"Your physical fitness" details:@"To be able to comfortably maintain a good cycling position, you need to have structural strength. Therefore, it becomes important to train your core for keeping your body stabile, and to add stretching into your workouts to improve flexibility. This will help you perform more efficiently, and do so for a longer time." icon:@"buddy3" category:firstCategory];
    [RealManager createAdviceWithTitle:@"Remember that everyone is an individual" details:@"You need to feel comfortable in the position you use on the bike, so make sure you take the characteristics of your own body into account. For example, it may be more difficult to maintain a very low position for taller riders, and thus their most efficient posture is usually a little higher than that of shorter riders. And as Steve Hogg, a renowned bike fit specialist has said, he has never seen a symmetrical cyclist. Make sure your position fits you!" icon:@"buddy4" category:firstCategory];
    
     [RealManager createAdviceWithTitle:@"Before Your Ride" details:@"If you want to maintain a good quality of exercise, then breakfast is essential. Skipping breakfast would mean running on empty. Running on empty would see you become light-headed and dizzy, meaning you could potentially become a risk to yourself and those around you on the road or trail." icon:@"food1" category:secondCategory];
     [RealManager createAdviceWithTitle:@"During Your Ride" details:@"If you're out for a short ride, say an hour or less, you won't need to be stocked up with too much. A full bottle of water and a good quality oat based cereal bar should suffice. If you're out for longer however, ensure that you have plenty of foods loaded with carbohydrates." icon:@"food2" category:secondCategory];
     [RealManager createAdviceWithTitle:@"After Your Ride" details:@"What you eat after your ride is just as important as what you eat before and during your ride. Christine Bailey from Bike Radar talks about the importance of eating protein when you're done pushing the pedals. All too often cyclists think that their performance depends on the amount of carbohydrates they consume. Studies are showing that protein plays an important role too. Carbohydrates may be the best riding fuel, but skimp on protein when the ride is over and you'll suffer fatigue, muscles soreness and slower recovery. Protein is vital for the repair and recovery of muscle tissue after a ride. Eat the wrong foods after training, and you'll end up exhausted with sore, aching legs. Eat the right foods and your body will get stronger, fitter and recover quicker.  Chocolate milk is a good choice for straight after your ride, as are salted nuts or a peanut butter sandwich." icon:@"food3" category:secondCategory];
    
    [RealManager createAdviceWithTitle:@"La Angelina" details:@"Best single track in Costa Rica, good uphill, good switchbacks, great forest; greast views, wonderful down hill" icon:@"route1" category:thirdCategory];
    [RealManager createAdviceWithTitle:@"Los Senderos de Colon" details:@"soft ascend to reach the rest of the trails" icon:@"route2" category:thirdCategory];
    [RealManager createAdviceWithTitle:@"Las Catalinas" details:@"Fantastic intermediate - advanced single track trail with some stunning ocean views. Few Costa Ricans have carved it into a hill/mountain by hands in last 4 years. Several wooden bridges and 180 turns make it great fun to ride." icon:@"route3" category:thirdCategory];



    return [RealManager getAllCategory];
    
}

+(void)saveRealObject:(RLMObject*)realmObject{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}
+(Category*)getCategoryWithName:(NSString*)name{
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = %@",name];
    RLMResults<Category *> *categories = [Category objectsWithPredicate:predicate];
    if(categories.count>0){
        return categories.firstObject;
    }
    return nil;
}
+(void)createAdviceWithTitle:(NSString*)title details:(NSString*)details icon:(NSString*)icon category:(Category*)category{
    Advice *advices = [Advice new];
    advices.title = title;
    advices.details = details;
    advices.iconName = icon;
    [RealManager saveRealObject:advices];
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [category.adviceArray addObject:advices];
    [realm commitWriteTransaction];
    
}
+(void)createActivityWithDate:(NSDate*)date time:(NSString*)time{
    Activity *activity = [Activity new];
    activity.date = date;
    activity.timer = time;
    [RealManager saveRealObject:activity];
 
}
+(RLMResults*)getActivityHistory{
    RLMResults<Activity *> *activities = [[Activity allObjects] sortedResultsUsingDescriptors:@[
                                                                                                [RLMSortDescriptor sortDescriptorWithKeyPath:@"date" ascending:NO]
                                                                                                ]];;
    if (activities.count>0) {
           return activities;
    }
    return nil;

}
@end
