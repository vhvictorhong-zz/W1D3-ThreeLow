//
//  Dice.m
//  ThreeLow
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (void) randomize {
    
    self.diceValue = arc4random_uniform(6) +1;
    
    switch (self.diceValue) {
        case 1:
            self.symbol = @"\u2680";
            break;
        case 2:
            self.symbol = @"\u2681";
            break;
        case 3:
            self.symbol = @"\u2682";
            break;
        case 4:
            self.symbol = @"\u2683";
            break;
        case 5:
            self.symbol = @"\u2684";
            break;
        default:
            self.symbol = @"\u2685";
            break;
    }
    
}

- (void) roll {
    
    [self randomize];
    
}

@end
