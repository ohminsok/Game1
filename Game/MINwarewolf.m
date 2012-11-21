//
//  MINwarewolf.m
//  Game
//
//  Created by Mac on 11/20/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "MINwarewolf.h"

@implementation MINwarewolf

+(id) warewolfSingleton{
    
   
    static dispatch_once_t pred;
    static MINwarewolf *warewolfInstance = nil;
    dispatch_once(&pred, ^{
        warewolfInstance = [[MINwarewolf alloc] init];
        
    });
    
    NSLog(@"%@",warewolfInstance);

    int damageMagic = warewolfInstance.damageMagic;
    NSLog(@"%i",warewolfInstance.damageMagic);
    
    warewolfInstance.damageMagic = 20;
    warewolfInstance.skinColor = @"Black";
    
    
    
    return warewolfInstance;
    
    
   
}


@end
