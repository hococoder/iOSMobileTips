//
//  CoreLocationExampleViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 10/20/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "CoreLocationExampleViewController.h"

@interface CoreLocationExampleViewController () <CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *location;
@property (weak, nonatomic) IBOutlet UILabel *coordLat;
@property (weak, nonatomic) IBOutlet UILabel *coordLon;
@property (weak, nonatomic) IBOutlet UILabel *altitude;
@property (weak, nonatomic) IBOutlet UILabel *hAccuracy;
@property (weak, nonatomic) IBOutlet UILabel *vAccuracy;
@property (weak, nonatomic) IBOutlet UILabel *timestamp;
@property (weak, nonatomic) IBOutlet UILabel *speed;
@property (weak, nonatomic) IBOutlet UILabel *course;


@end

@implementation CoreLocationExampleViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [self.locationManager startUpdatingLocation];
    
    self.locationManager.delegate = self;
    self.location = [[CLLocation alloc] init];
}


#pragma MARK CLLocationManagerDelegate
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    self.location = locations.lastObject;
    NSLog(@"%@", self.location.description);
    
    self.coordLat.text = [NSString stringWithFormat:@"%f", self.location.coordinate.latitude];
    self.coordLon.text = [NSString stringWithFormat:@"%f", self.location.coordinate.longitude];
    self.altitude.text = [NSString stringWithFormat:@"%f", self.location.altitude];
    self.hAccuracy.text = [NSString stringWithFormat:@"%f", self.location.horizontalAccuracy];
    self.vAccuracy.text = [NSString stringWithFormat:@"%f", self.location.verticalAccuracy];
    self.timestamp.text = [NSString stringWithFormat:@"%@", self.location.timestamp];
    self.speed.text = [NSString stringWithFormat:@"%f", self.location.speed];
    self.course.text = [NSString stringWithFormat:@"%f", self.location.course];
}

@end
