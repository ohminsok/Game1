//
//  MINProfileViewController.h
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"

@interface MINProfileViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *health;
@property (strong, nonatomic) IBOutlet UILabel *damage;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
- (IBAction)goBack:(UIButton *)sender;

@property Character *character;
@end
