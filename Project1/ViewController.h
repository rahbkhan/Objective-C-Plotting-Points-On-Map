//
//  ViewController.h
//  Project1
//
//  Created by Robert H Conner II on 2/25/15.
//  Copyright (c) 2015 Robert H Conner II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//Link the text field for first location
@property (weak, nonatomic) IBOutlet UITextField *txtLongitude;
@property (weak, nonatomic) IBOutlet UITextField *txtLatitude;

//Link the text field for second location
@property (weak, nonatomic) IBOutlet UITextField *txtLongitudeTwo;
@property (weak, nonatomic) IBOutlet UITextField *txtLatitudeTwo;

//Calculate and display the results
- (IBAction)lblCalculate:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;
@end

