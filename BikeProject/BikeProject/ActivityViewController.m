//
//  ActivityViewController.m
//  BikeProject
//
//  Created by Edgar Delgado on 3/28/17.
//  Copyright © 2017 Edgar Delgado. All rights reserved.
//

#import "ActivityViewController.h"
#import "RealManager.h"
#import "Activity.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "ActivityTableViewCell.h"

@interface ActivityViewController ()
@property (weak, nonatomic) IBOutlet UILabel *stopwatchTimeLabel;
@property (weak, nonatomic) NSTimer *myTimer;
@property int currentTimeInSeconds;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic, strong) RLMResults *activitiesArray;

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[ActivityTableViewCell getClassName]];
    self.activitiesArray = [RealManager getActivityHistory];
    // Do any additional setup after loading the view.
}
- (NSTimer *)createTimer {
    return [NSTimer scheduledTimerWithTimeInterval:1.0
                                            target:self
                                          selector:@selector(timerTicked:)
                                          userInfo:nil
                                           repeats:YES];
}

- (NSString *)formattedTime:(int)totalSeconds
{
    
    int seconds = totalSeconds % 60;
    int minutes = (totalSeconds / 60) % 60;
    int hours = totalSeconds / 3600;
    
    return [NSString stringWithFormat:@"%02d:%02d:%02d",hours, minutes, seconds];
}
- (void)timerTicked:(NSTimer *)timer {
    
    _currentTimeInSeconds++;
    
    self.stopwatchTimeLabel.text = [self formattedTime:_currentTimeInSeconds];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startButtonPressed:(id)sender {
    if (!_currentTimeInSeconds) {
        _currentTimeInSeconds = 0 ;
    }
    
    if (!_myTimer) {
        _myTimer = [self createTimer];
    }
}
- (IBAction)resetButtonPressed:(id)sender {
       [_myTimer invalidate];
}
- (IBAction)stopButtonPressed:(id)sender {
    if (_myTimer) {
        [_myTimer invalidate];
        _myTimer = [self createTimer];
    }
    
    _currentTimeInSeconds = 0;
    
    self.stopwatchTimeLabel.text = [self formattedTime:_currentTimeInSeconds];
}
- (IBAction)saveActivity:(id)sender {
    [RealManager createActivityWithDate:[NSDate date] time:self.stopwatchTimeLabel.text];
    if(self.activitiesArray.count == 0)
    {
     self.activitiesArray = [RealManager getActivityHistory];
    }
    [_tableView reloadData];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.activitiesArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ActivityTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ActivityTableViewCell getClassName]];
    Activity *activities = self.activitiesArray[indexPath.row];
    [cell setupCellWithActivities:activities];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}



@end
