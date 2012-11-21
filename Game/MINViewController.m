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
    
    
    //prove this exists in the profile
    _warewolf = [MINwarewolf warewolfSingleton];
    
    //scope is local to the method when the method terminates this object is deallocated
    Character *characterInstanceIsLocal = [[Character alloc] init];
    characterInstanceIsLocal.damaage = 50;
    
    //scope is the class, every method in the class has access to this ivar.
    _character2 = [[Character alloc] init];
    _character2.damaage = 100;
    
    
    //prove that my factories are working
    Factory *factory = [[Factory alloc] init];
    NSArray *weapons = [factory createWeapons];
    NSLog(@"weapons %@",weapons);
    NSLog(@"%@",[[weapons objectAtIndex:0] name]);
    NSArray *armors = [factory createArmors];
    NSArray *items = [factory createItems];
   
   
    _character.weapon = [weapons objectAtIndex:0];
    _character.armor = [armors objectAtIndex:1];
    _character.item = [items objectAtIndex: 1];
    
    
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
    
    NSLog(@"property scope %i", _character2.damaage);
    NSLog(@"singleton scope %i", _character.damaage);

    
    
    
}
@end
