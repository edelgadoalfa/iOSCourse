//
//  DogsViewController.m
//  Tarea4
//
//  Created by Edgar Delgado on 2/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "DogsViewController.h"
#import "DogsTableViewCell.h"
#import "Dog.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "DetailsViewController.h"

@interface DogsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dogArray;

@end

@implementation DogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[DogsTableViewCell getClassName]];
    [self initializeDogArray];
}
-(void)initializeDogArray{
    Dog *aDog = [[Dog alloc] initWithName:@"Gordo" imageName:@"bullterrier" color:@"White" location:@"Heredia" age:4 contactInformation:@"gordo@gmail.com"];
    Dog *bDog = [[Dog alloc] initWithName:@"Thor" imageName:@"bulldog" color:@"Brown" location:@"San José" age:10 contactInformation:@"thor@gmail.com"];
    Dog *cDog = [[Dog alloc] initWithName:@"Atenea" imageName:@"americanstandford" color:@"Black" location:@"Puntarenas" age:2 contactInformation:@"atenea@gmail.com"];
    Dog *dDog = [[Dog alloc] initWithName:@"Zeus" imageName:@"dalmata" color:@"Black/White" location:@"Limón" age:3 contactInformation:@"zeus@gmail.com"];
    Dog *eDog = [[Dog alloc] initWithName:@"Apolo" imageName:@"doberman" color:@"Black" location:@"Guanacaste" age:1 contactInformation:@"apolo@gmail.com"];
    Dog *fDog = [[Dog alloc] initWithName:@"Ares" imageName:@"labrador" color:@"Yellow" location:@"Alajuela" age:11 contactInformation:@"ares@gmail.com"];
    Dog *gDog = [[Dog alloc] initWithName:@"Hermes" imageName:@"pastoraleman" color:@"Yellow" location:@"Cartago" age:8 contactInformation:@"hermes@gmail.com"];
    Dog *hDog = [[Dog alloc] initWithName:@"Poseidon" imageName:@"pitbull" color:@"White" location:@"Perez Zeledón" age:6 contactInformation:@"poseidon@gmail.com"];
    Dog *iDog = [[Dog alloc] initWithName:@"Atenas" imageName:@"rottweiler" color:@"Black" location:@"Palmares" age:7 contactInformation:@"atenas@gmail.com"];
    Dog *jDog = [[Dog alloc] initWithName:@"Perseo" imageName:@"siberian" color:@"Black" location:@"Heredia" age:5 contactInformation:@"perseo@gmail.com"];
    
    self.dogArray = [[NSMutableArray alloc] initWithObjects:aDog,bDog,cDog,dDog,eDog,fDog,gDog,hDog,iDog,jDog, nil];

}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dogArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DogsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[DogsTableViewCell getClassName]];
    Dog *currentDog = self.dogArray[indexPath.row];
    [cell setupCellWithDog: currentDog];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailsViewController *detailsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DogDetail"];
    Dog *dogSelected = self.dogArray[indexPath.row];
    detailsViewController.dogSelected = dogSelected;
    [self.navigationController pushViewController:detailsViewController animated:true];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
