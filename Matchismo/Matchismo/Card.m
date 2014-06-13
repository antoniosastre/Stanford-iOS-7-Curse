//
//  Card.m
//  MatchCardGame
//
//  Created by Antonio Sastre on 13/06/14.
//  Copyright (c) 2014 Antonio Sastre. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards{
    
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score++;
        }
    }
    return score;
}



@end
