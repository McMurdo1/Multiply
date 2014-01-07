//
//  ViewController.m
//  Multiply
//
//  Created by Matthew Graham on 1/7/14.
//  Copyright (c) 2014 Matthew Graham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    __weak IBOutlet UITextField *myNumber;
    __weak IBOutlet UILabel *myMultiplier;
    __weak IBOutlet UILabel *myAnswer;
    __weak IBOutlet UISlider *mySlider;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    NSString *myNumberString = [myNumber text];
    int i = [myNumberString intValue];
    
    NSString *myMultiplierString = [myMultiplier text];
    int m = [myMultiplierString intValue];
    int result = i * m;
    
    NSString *myResult = [NSString stringWithFormat:@"%d",result];
    [myAnswer setText:myResult];
    
    
    
}
- (IBAction)onSliderChanged:(id)sender {
    [myMultiplier setText:[NSString stringWithFormat:@"%d", (int)mySlider.value]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
