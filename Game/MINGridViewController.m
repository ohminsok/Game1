//
//  MINGridViewController.m
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINGridViewController.h"
#import "MINProfileViewController.h"

@interface MINGridViewController ()

@end

@implementation MINGridViewController

@synthesize character = _character;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//method gets called everytime the view appears, view appears on the top of the stack, recalls previous view
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear for GridViewController");
    _healthLabel.text = [[NSString alloc] initWithFormat:@"%d",_character.health];

    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _character = [Character characterAttributeStore];
    NSLog(@"the character damage is %d", _character.damaage);
    NSLog(@"the character health is %d", _character.health);

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)directionArrowPress:(UIButton *)sender {
}

- (IBAction)profilePress:(UIButton *)sender {
    
    //MIN is the class created, *is instance of MINProfileViewController, alloc, init with xib view (MINProfile view)
    //self is object, the instance of MINGridViewController (b/c we're in this currrent class), and presentViewContorller is the method - to go to the profile page
    MINProfileViewController *profileViewController = [[MINProfileViewController alloc] initWithNibName:@"MINProfileViewController" bundle:nil];
    [self presentViewController:profileViewController animated:YES completion:nil];

    
    
}
@end
