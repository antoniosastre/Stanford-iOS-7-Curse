//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Antonio Sastre on 13/06/14.
//  Copyright (c) 2014 Antonio Sastre. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *myDeck;

@end

@implementation CardGameViewController

- (PlayingCardDeck *)myDeck
{
    if (! _myDeck) _myDeck = [[PlayingCardDeck alloc] init];
    return _myDeck;
    
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Drawed %d cards.", self.flipCount];
    NSLog(@"flipcount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
         Card *ncard = [self.myDeck drawRandomCard];
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:[ncard contents] forState:UIControlStateNormal];
        self.flipCount++;
    }
}

@end
