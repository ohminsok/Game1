//
//  MINViewController.m
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINViewController.h"
#import "MINGridViewController.h"
#import "Factory.h"

@interface MINViewController ()

@end

@implementation MINViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nil
    //characterAttributeStore is being called on the class itself instead of an instance of Character, this is a class method.

    _character = [Character characterAttributeStore];
    NSLog(@"charcter string %@", _character.string);
    _character.health = 100;
    _character.damaage = 50;
    
    Character *characterInstanceIsLocal = [[Character alloc] init];
    characterInstanceIsLocal.damaage = 50;
    
    //prove that my factories are working
    Factory *factory = [[Factory alloc] init];
    NSArray *weapons = [factory createWeapons];
    NSLog(@"weapons %@",weapons);
    NSLog(@"%@",[[weapons objectAtIndex:0] name]);
   
    _character.weapon = [weapons objectAtIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startPress:(UIButton *)sender {
    
    //this is 
    MINGridViewController *gridViewController = [[MINGridViewController alloc] initWithNibName:@"MINGridViewController" bundle:nil];
    NSLog(@"gridViewController %@", gridViewController);
    [self presentViewController:gridViewController animated:YES completion:nil];
    
    
}
@end
