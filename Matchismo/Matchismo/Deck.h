//
//  Deck.h
//  MatchCardGame
//
//  Created by Antonio Sastre on 13/06/14.
//  Copyright (c) 2014 Antonio Sastre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;


@end
