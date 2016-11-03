//
//  Dice.h
//  ThreeLow
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int diceValue;
@property NSString *symbol;

-(void)randomize;
-(void)roll;
@end
