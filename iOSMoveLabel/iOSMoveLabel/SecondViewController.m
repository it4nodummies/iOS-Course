//
//  SecondViewController.m
//  iOSMoveLabel
//
//  Created by Ivano Turi on 14/11/13.
//  Copyright (c) 2013 Ivano Turi. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblMove;
@property (strong, nonatomic) NSArray *arOffset;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmOffset;
@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSDictionary *offset0 = @{@"x": @(50), @"y": @(100)};
    NSDictionary *offset1 = @{@"x": @(0), @"y": @(100)};
    NSDictionary *offset2 = @{@"x": @(100), @"y": @(0)};
    NSDictionary *offset3 = @{@"x": @(50), @"y": @(50)};
    NSDictionary *offset4 = @{@"x": @(20), @"y": @(10)};
    
    _arOffset = @[offset0, offset1, offset2, offset3, offset4];
    [_sgmOffset setHidden:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnMoveLabel:(UIButton *)sender {
    
    
    
}

- (IBAction)sgmControl:(UISegmentedControl *)sender {
    NSDictionary *dctOffset = [self.arOffset objectAtIndex:[sender selectedSegmentIndex]];
    //int xOffset2 = [self.arOffset [0][@"x"] integerValue];
    int xOffset = [[dctOffset valueForKey:@"x"] integerValue];
    int yOffset = [[dctOffset valueForKey:@"y"] integerValue];
    //[UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
    //    [self.lblMove setFrame:CGRectOffset(self.lblMove.frame, xOffset, yOffset)];
    //     } completion:nil];
    NSLog(@"x: %d y: %d", xOffset, yOffset);

}

/*
- (IBAction)sgmControl:(UISegmentedControl *)sender {
    int selection = [sender selectedSegmentIndex];
    
    if (selection == 0) {
        NSDictionary *dctOffset = [self.arOffset objectAtIndex:0];
        int xOffset = [[dctOffset valueForKey:@"x"] integerValue];
        int yOffset = [[dctOffset valueForKey:@"y"] integerValue];
        [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
            [self.lblMove setFrame:CGRectOffset(self.lblMove.frame, xOffset, yOffset)];
        } completion:nil];
    }
    else if (selection == 1){
        NSDictionary *dctOffset = [self.arOffset objectAtIndex:1];
        int xOffset = [[dctOffset valueForKey:@"x"] integerValue];
        int yOffset = [[dctOffset valueForKey:@"y"] integerValue];
        [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
            [self.lblMove setFrame:CGRectOffset(self.lblMove.frame, xOffset, yOffset)];
        } completion:nil];
    }
    else if (selection == 2){
        NSDictionary *dctOffset = [self.arOffset objectAtIndex:2];
        int xOffset = [[dctOffset valueForKey:@"x"] integerValue];
        int yOffset = [[dctOffset valueForKey:@"y"] integerValue];
        [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
            [self.lblMove setFrame:CGRectOffset(self.lblMove.frame, xOffset, yOffset)];
        } completion:nil];
    }
    else if (selection == 3){
        NSDictionary *dctOffset = [self.arOffset objectAtIndex:3];
        int xOffset = [[dctOffset valueForKey:@"x"] integerValue];
        int yOffset = [[dctOffset valueForKey:@"y"] integerValue];
        [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
            [self.lblMove setFrame:CGRectOffset(self.lblMove.frame, xOffset, yOffset)];
        } completion:nil];
    }
    else if (selection == 4){
        NSDictionary *dctOffset = [self.arOffset objectAtIndex:4];
        int xOffset = [[dctOffset valueForKey:@"x"] integerValue];
        int yOffset = [[dctOffset valueForKey:@"y"] integerValue];
        [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
            [self.lblMove setFrame:CGRectOffset(self.lblMove.frame, xOffset, yOffset)];
        } completion:nil];
    }
    
}
*/
@end