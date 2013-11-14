//
//  ViewController.m
//  iOSMoveLabel
//
//  Created by Ivano Turi on 13/11/13.
//  Copyright (c) 2013 Ivano Turi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) SecondViewController *secondViewController;
@property (weak, nonatomic) IBOutlet UILabel *lblAlpha;
@property (weak, nonatomic) IBOutlet UILabel *lblAlphaValue;
@property (weak, nonatomic) IBOutlet UISlider *sldAlpha;
@property float fltAlpha;
@property (strong, nonatomic) NSDictionary *dctOffsetMoving;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    // Setta il valore Alpha della label nello spazio di memoria utente
    [self.lblAlpha setAlpha:[prefs floatForKey:KEY_ALPHA_LABEL]];
    
    // Setta il valore dello Slider con il valore Alpha memorizzato nello spazio di memoria utente
    [self.sldAlpha setValue:[prefs floatForKey:KEY_ALPHA_LABEL]];
    
    //setta il valore della label lblAlphaValue al valore alpha della label lblAlpha.
    [self.lblAlphaValue setText:[NSString stringWithFormat:@"%.2f", [prefs floatForKey:KEY_ALPHA_LABEL]]];
    
    //[self.lblAlphaValue setText:[NSString stringWithFormat:@"%.2f", [self.lblAlpha alpha] ]];
}


- (void)viewDidDisappear:(BOOL)animated
{
    // Si memorizza nello spazio di memoria utente il valore Alpha della label così da ritrovarlo quando si riapre l'applicazione
    [[NSUserDefaults standardUserDefaults] setFloat:[self.lblAlpha alpha] forKey:KEY_ALPHA_LABEL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sldChangeAlphaLabel:(UISlider *)sender {
    
    // setta il valore dell'alpha della label lblAlpha al valore dello slider. Il valore dello slider può variare tra 0 e 1.
    [self.lblAlpha setAlpha:[sender value]];
    
    //setta il valore della label lblAlphaValue al valore alpha della label lblAlpha.
    [self.lblAlphaValue setText:[NSString stringWithFormat:@"%.2f", [self.lblAlpha alpha]]];
    
}



@end
