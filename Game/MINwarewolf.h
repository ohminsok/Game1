//
//  MINwarewolf.h
//  Game
//
//  Created by Mac on 11/20/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "Monster.h"

//subclassing!
@interface MINwarewolf : Monster

@property (nonatomic) int damageMagic;

+(id) warewolfSingleton;

@end
