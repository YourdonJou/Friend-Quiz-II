//
//  Help_GameViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-20.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "Help_GameViewController.h"

@interface Help_GameViewController ()

@end

@implementation Help_GameViewController
@synthesize q1Answer, q1Button;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [self.q1Answer setHidden: YES];
    [self.q2Answer setHidden: YES];
    // Do any additional setup after loading the view.
    
  //  [self.barButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    
    
  //  [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    [q1Answer setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigations

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)q1ButtonSelected:(id)sender {
    
    [q1Answer setHidden: NO];
    
   // self.achivement1MessageView.transform = CGAffineTransformMakeScale(0.01, 0.01);
    
    
    [self startTextAnimations];
    
    
    self.q1Answer.transform = CGAffineTransformMakeScale(0.01, 0.5);
   
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        // animate it to the identity transform (100% scale)
        self.q1Answer.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
        
     //   self.q2Button.frame.origin.y = 100 - self.q2Button.frame.origin.y;
        // if you want to do something once the animation finishes, put it here
    }];
}



- (IBAction)q2ButtonSelected:(id)sender {
    
    [self.q2Answer setHidden:NO];
}

-(void)startTextAnimations{
    BOOL isAnimated = YES;
    
    
    if(isAnimated){
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    //  self.view.frame.origin
    self.q2Button.frame = CGRectMake(self.q2Button.frame.origin.x, (self.q2Button.frame.origin.y + 50), self.q2Button.frame.size.width, self.q2Button.frame.size.height);
    
    [UIView commitAnimations];
        isAnimated = NO;
        
    }
    
    else if (!isAnimated){
        
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration: 0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        //  self.view.frame.origin
        self.q2Button.frame = CGRectMake(self.q2Button.frame.origin.x, (self.q2Button.frame.origin.y - 50), self.q2Button.frame.size.width, self.q2Button.frame.size.height);
        
        [UIView commitAnimations];
        isAnimated = YES;
        
    }
    
    
}

@end
