//
//  ViewController.m
//  Project1
//
//  Created by Robert H Conner II on 2/25/15.
//  Copyright (c) 2015 Robert H Conner II. All rights reserved.
//

#import "ViewController.h"
#import "PointLocations.h"
#include <math.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lblCalculate:(UIButton *)sender {
    PointLocations *myLocation = [[PointLocations alloc] init];
    myLocation.latitude =[_txtLatitude.text doubleValue];
    myLocation.longitude=[_txtLongitude.text doubleValue];
    
    PointLocations *yourLocation = [[PointLocations alloc] init];
    yourLocation.latitudeTwo = [_txtLatitudeTwo.text doubleValue];
    yourLocation.longitudeTwo= [_txtLongitudeTwo.text doubleValue];
    
    /* Obtained the following formula from.
     http://www.codecodex.com/wiki/index.php?title=Calculate_distance_between_two_points_on_a_globe&action=edit&section=5     
     */
    static const double DEG_TO_RAD = 0.017453292519943295769236907684886;
    static const double EARTH_RADIUS_IN_METERS = 6372797.560856;
    
    double latitudeArc  = (yourLocation.latitudeTwo - myLocation.latitude) * DEG_TO_RAD;
    double longitudeArc = (yourLocation.longitudeTwo - myLocation.longitude) * DEG_TO_RAD;
    double latitudeH = sin(latitudeArc * 0.5);
    latitudeH *= latitudeH;
    double lontitudeH = sin(longitudeArc * 0.5);
    lontitudeH *= lontitudeH;
    double tmp = cos(yourLocation.latitudeTwo*DEG_TO_RAD) * cos(myLocation.latitude*DEG_TO_RAD);
    double distance = EARTH_RADIUS_IN_METERS * 2.0 * asin(sqrt(latitudeH + tmp*lontitudeH));
    
    NSString *strTest = [NSString stringWithFormat:@"%f", distance];
    
    _lblResult.text = strTest;}
@end
