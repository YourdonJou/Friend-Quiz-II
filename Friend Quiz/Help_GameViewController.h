//
//  Help_GameViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-20.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface Help_GameViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *barButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (strong, nonatomic) IBOutlet UIButton *q1Button;
@property (strong, nonatomic) IBOutlet UILabel *q1Answer;
@property (strong, nonatomic) IBOutlet UIButton *q2Button;
@property (strong, nonatomic) IBOutlet UILabel *q2Answer;
@property (strong, nonatomic)IBOutlet UIButton *testBack;

@property (strong, nonatomic) IBOutlet UIButton *q3Button;

@property (strong, nonatomic) IBOutlet UILabel *q3Answer;

- (IBAction)q1ButtonSelected:(id)sender;

- (IBAction)q2ButtonSelected:(id)sender;

- (IBAction)q3ButtonSelected:(id)sender;

-(void)startTextAnimations;
-(void)revertTextAnimations;



@end
