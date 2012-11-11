//
//  Factory.h
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"
//import additional classes later - HW, i.e. Item


@interface Factory : NSObject

//declaring methods, NSArray is the return type

-(NSArray *) createWeapons;
-(NSArray *) createArmors;


@end
