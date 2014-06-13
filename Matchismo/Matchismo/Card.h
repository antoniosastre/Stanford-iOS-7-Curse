//
//  Card.h
//  MatchCardGame
//
//  Created by Antonio Sastre on 13/06/14.
//  Copyright (c) 2014 Antonio Sastre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end

