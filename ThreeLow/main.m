//
//  main.m
//  ThreeLow
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = true;
        BOOL startGame = false;
        GameController *gameController = [[GameController alloc] init];
        
        while (gameOn) {
            
            if (startGame) {
                NSLog(@"roll - Roll dice\nhold# - To hold dice\nunhold# - To unhold dice\nreset - Reset the game\nquit - quit the game");
            } else {
                NSLog(@"roll - Roll dice\nquit - Quit game");
                startGame = true;
            }
            
            
            NSString *input = [InputHandler getInput];
            
            if ([input isEqualToString:@"roll"]) {
                for (Dice *dice in gameController.diceArray) {
                    [dice roll];
                    NSLog(@"%@", dice.symbol);
                    
                }
            } else if ([input isEqualToString:@"hold1"]) {
                
                    [gameController holdDice:gameController.diceArray[0]];
                
            } else if ([input isEqualToString:@"hold2"]) {
                
                [gameController holdDice:gameController.diceArray[1]];
                
            } else if ([input isEqualToString:@"hold3"]) {
                
                [gameController holdDice:gameController.diceArray[2]];
                
            } else if ([input isEqualToString:@"hold4"]) {
                
                [gameController holdDice:gameController.diceArray[3]];
                
            } else if ([input isEqualToString:@"hold5"]) {
                
                [gameController holdDice:gameController.diceArray[4]];
                
            } else if ([input isEqualToString:@"unhold1"]) {
                
                [gameController unHoldDice:gameController.diceArray[0]];
                
            } else if ([input isEqualToString:@"unhold2"]) {
                
                [gameController unHoldDice:gameController.diceArray[1]];
                
            } else if ([input isEqualToString:@"unhold3"]) {
                
                [gameController unHoldDice:gameController.diceArray[2]];
                
            } else if ([input isEqualToString:@"unhold4"]) {
                
                [gameController unHoldDice:gameController.diceArray[3]];
                
            } else if ([input isEqualToString:@"unhold5"]) {
                
                [gameController unHoldDice:gameController.diceArray[4]];
                
            } else if ([input isEqualToString:@"reset"]) {
                
                startGame = false;
                
            } else if ([input isEqualToString:@"quit"]) {
                gameOn = false;
            }
            
        }
    }
    return 0;
}
