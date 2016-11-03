//
//  GameController.m
//  ThreeLow
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(instancetype)init {
    
    if (self = [super init]) {
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        _diceArray = @[dice1, dice2, dice3, dice4, dice5];
        
        _holdDiceSet = [NSMutableSet set];
    }
    
    return self;
    
}

-(void)holdDice:(Dice *)dice{
    
    [self.holdDiceSet addObject:dice];
    
    [self displayScore];
    
}

-(void)unHoldDice:(Dice *)dice {
    
    [self.holdDiceSet removeObject:dice];
    
}

-(void)displayScore {
    int score = 0;
    
    for (Dice *dice in _holdDiceSet) {
        
        score += dice.diceValue;
        
    }
    
    NSLog(@"Your dice Score is %i", score);
    
    
}

-(void)resetScore {
    
    [self.holdDiceSet removeAllObjects];
}

@end
