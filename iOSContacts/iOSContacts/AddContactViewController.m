//
//  AddContactViewController.m
//  iOSContacts
//
//  Created by Ivano Turi on 18/11/13.
//  Copyright (c) 2013 Ivano Turi. All rights reserved.
//

#import "AddContactViewController.h"
#import "AppDelegate.h"

@interface AddContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtAddName;
@property (weak, nonatomic) IBOutlet UITextField *txtAddSurname;

@end

@implementation AddContactViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnAddContact:(UIButton *)sender {
    NSDictionary *addContact = @{@"name": [_txtAddName text], @"surname": [_txtAddSurname text]};
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate.arrayDataSource addObject:addContact];
    
    NSLog(@"nome %@, cognome %@", [addContact objectForKey:@"name"], [addContact objectForKey:@"surname"]);
    
    [self.presentingViewController dismissViewControllerAnimated:TRUE completion:nil];
}

@end
