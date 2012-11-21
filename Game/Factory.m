//
//  Factory.m
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "Factory.h"

@implementation Factory

-(NSArray *) createWeapons{
    
    //this is creating the object staff
    Weapon *staff = [[Weapon alloc] init];
    
    //settin value of staff
    staff.name = @"staff";
    staff.damage = 10;
    
    Weapon *sword = [[Weapon alloc] init];
    sword.name = @"firey sword";
    sword.damage = 15;
    
    Weapon *sword2 = [[Weapon alloc] init];
    //sword2 is the object w/ properties of name and damage
    sword2.name = @"mini sword";
    sword2.damage = 12;
    
    //creating the weapons array w/ the objects
    NSArray *weapons = [[NSArray alloc] initWithObjects: staff, sword, sword2, nil];
    return weapons;
}
-(NSArray *) createArmors{
    Armor *armor1 = [[Armor alloc] init];
    armor1.name = @"chain";
    armor1.bodyArmor = 10;
    
    Armor *armor2 = [[Armor alloc] init];
    armor2.name = @"metal";
    armor2.bodyArmor = 20;
    
    NSArray *armors = [[NSArray alloc] initWithObjects: armor1, armor2, nil];
    return armors;

    
}

-(NSArray *) createItems{
    Item *fairy = [[Item alloc] init];
    fairy.name = @"wings";
    fairy.point = 10;
    
    Item *elf = [[Item alloc] init];
    elf.name = @"shorty";
    
    NSArray *items = [[NSArray alloc] initWithObjects: fairy, elf, nil];
    return items;
    
    
    
    
}

@end
