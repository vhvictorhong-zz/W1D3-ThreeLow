//
//  GameController.h
//  ThreeLow
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSArray *diceArray;
@property NSMutableSet *holdDiceSet;

-(void)holdDice:(Dice *)dice;
-(void)unHoldDice:(Dice *)dice;
-(void)displayScore;
-(void)resetScore;

@end
