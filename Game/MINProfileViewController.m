//
//  MINProfileViewController.m
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINProfileViewController.h"

@interface MINProfileViewController ()

@end

@implementation MINProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear was called");
    
    _character.health = 1000;
    _weaponLabel.text =  _character.weapon.name;
    _armorLabel.text = _character.armor.name;
    _itemLabel.text = _character.item.name;
    
    
    
    _health.text = [[NSString alloc] initWithFormat:@"%i",_character.health];
    _damage.text = [[NSString alloc] initWithFormat:@"%i",_character.damaage];
    

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _character = [Character characterAttributeStore];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
