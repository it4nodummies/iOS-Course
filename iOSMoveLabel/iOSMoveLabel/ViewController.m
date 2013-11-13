//
//  ViewController.m
//  iOSMoveLabel
//
//  Created by Ivano Turi on 13/11/13.
//  Copyright (c) 2013 Ivano Turi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblAlpha;
@property (weak, nonatomic) IBOutlet UILabel *lblAlphaValue;
@property (strong, nonatomic) NSDictionary *dctOffsetMoving;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.lblAlphaValue setText:[NSString stringWithFormat:@"%.2f", [self.lblAlpha alpha] ]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sldChangeAlphaLabel:(UISlider *)sender {
    [self.lblAlpha setAlpha:[sender value]];
    [self.lblAlphaValue setText:[NSString stringWithFormat:@"%.2f", [self.lblAlpha alpha]]];
    
}

@end
