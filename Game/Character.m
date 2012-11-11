//
//  Character.m
//  Game
//
//  Created by Mac on 11/11/12.
//  Copyright (c) 2012 Mac. All rights reserved.
//

#import "Character.h"

@implementation Character

+(id) characterAttributeStore{
    static dispatch_once_t pred;
    static Character *characterInstance = nil;
    dispatch_once(&pred, ^{
        characterInstance = [[Character alloc] init];
        
    });
    
    characterInstance.string=@"singleton method";
    
    return characterInstance;
}




@end
