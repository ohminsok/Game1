//
//  MINViewController.h
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "MINwarewolf.h"

@interface MINViewController : UIViewController
- (IBAction)startPress:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *enterName;

@property Character *character;
@property MINwarewolf *warewolf;

@property Character *character2;


@end
