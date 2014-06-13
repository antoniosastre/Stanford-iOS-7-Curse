//
//  PlayingCard.h
//  MatchCardGame
//
//  Created by Antonio Sastre on 13/06/14.
//  Copyright (c) 2014 Antonio Sastre. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;

@end
