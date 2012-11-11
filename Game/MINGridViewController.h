//
//  MINGridViewController.h
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"

@interface MINGridViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
- (IBAction)directionArrowPress:(UIButton *)sender;
- (IBAction)profilePress:(UIButton *)sender;
@property Character *character;

@end
