//
//  Character.h
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Armor.h"

@interface Character : NSObject

@property (strong, nonatomic) NSString *name;

//int can't use strong
@property (nonatomic) int health;
@property (nonatomic) int damaage;

@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;

+(id) characterAttributeStore;

@property (strong, nonatomic) NSString *string;

@end
