//
//  PointLocations.m
//  Project1
//
//  Created by Robert H Conner II on 2/25/15.
//  Copyright (c) 2015 Robert H Conner II. All rights reserved.
//

#import "PointLocations.h"

@implementation PointLocations
@synthesize latitude=_latitude;
@synthesize latitudeTwo=_latitudeTwo;
@synthesize longitude=_longitude;
@synthesize longitudeTwo=_longitudeTwo;


//Setters for the variables w/ error checking.
-(void) setLatitude:(double)latitude{
    if (latitude<=90.0 && latitude >= -90.0) {
        _latitude=latitude;
        }
    else
        _latitude=0.0;
}

-(void) setLatitudeTwo:(double)latitudeTwo
    {
    if (latitudeTwo<=90.0 && latitudeTwo >= -90.0) {
        _latitudeTwo=latitudeTwo;
    }
    else
        _latitudeTwo=0.0;
}
-(void) setLongitude:(double)longitude{
    if (longitude<=180.0 && longitude >= -180.0) {
        _longitude=longitude;
    }
    else
        _longitude=0.0;
}

-(void) setLongitudeTwo:(double)longitudeTwo{
    if (longitudeTwo<=180.0 && longitudeTwo >= -180.0) {
        _longitudeTwo=longitudeTwo;
    }
    else
        _longitudeTwo=0.0;
}


//Getters for the variables
-(double) latitude{
    return _latitude;
}

-(double) latitudeTwo{
    return _latitudeTwo;
}

-(double) longitude{
    return _longitude;
}

-(double) longitudeTwo{
    return _longitudeTwo;
}


@end
