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

@implementation Help_GameViewController{
    
    
    BOOL isAnimated;
    BOOL isAnimated2;
    BOOL isAnimated3;
}
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
    
    isAnimated = YES;
    isAnimated2 = YES;
    isAnimated3 = YES;
    [self.q1Answer setHidden: YES];
    [self.q2Answer setHidden: YES];
    [self.q3Answer setHidden:YES];
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
    
    if(isAnimated){
        
     //   [self startTextAnimations];

        isAnimated = NO;
        NSLog(@"is Animated is YES");
        self.q1Answer.transform = CGAffineTransformMakeScale(0.01, 0.5);
        
        [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            // animate it to the identity transform (100% scale)
            self.q1Answer.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished){
            
            //   self.q2Button.frame.origin.y = 100 - self.q2Button.frame.origin.y;
            // if you want to do something once the animation finishes, put it here
        }];
        
        
    }
    
    else {
        
        
      //  [self revertTextAnimations];
        isAnimated = YES;
        
        [self.q1Answer setHidden: YES];
        
           NSLog(@"is Animated is NO");
    }
    
    
    

}



- (IBAction)q2ButtonSelected:(id)sender {
    
    [self.q2Answer setHidden:NO];
    
    if(isAnimated2){
        
        
        self.q2Answer.transform = CGAffineTransformMakeScale(0.01, 0.5);
        
        [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            // animate it to the identity transform (100% scale)
            self.q2Answer.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished){
            
            //   self.q2Button.frame.origin.y = 100 - self.q2Button.frame.origin.y;
            // if you want to do something once the animation finishes, put it here
        }];

        
        
        isAnimated2 = NO;
    }
    
    else{
        
        
        isAnimated2 = YES;
        [self.q2Answer setHidden:YES];
    }
    
}

- (IBAction)q3ButtonSelected:(id)sender {
    
    
    [self.q3Answer setHidden:NO];
    
    if(isAnimated3){
        
        
        isAnimated3 = NO;
        NSLog(@"is Animated is YES");
        self.q3Answer.transform = CGAffineTransformMakeScale(0.01, 0.5);
        
        [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            // animate it to the identity transform (100% scale)
            self.q3Answer.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished){
            
            //   self.q2Button.frame.origin.y = 100 - self.q2Button.frame.origin.y;
            // if you want to do something once the animation finishes, put it here
        }];
        

        
    }
    
    else{
        
        
        isAnimated3 = YES;
        [self.q3Answer setHidden: YES];
    }
    
    
}

-(void)startTextAnimations{
//isAnimated = YES;
    
    
 
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    //  self.view.frame.origin
 //   self.q2Button.frame = CGRectMake(self.q2Button.frame.origin.x, (self.q2Button.frame.origin.y + 50), self.q2Button.frame.size.width, self.q2Button.frame.size.height);
    
    [UIView commitAnimations];
        isAnimated = NO;
    
    
}

-(void)revertTextAnimations{
    
    NSLog(@"Reverting Text Animations Method Called");
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration: 0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    //  self.view.frame.origin
 //   self.q2Button.frame = CGRectMake(self.q2Button.frame.origin.x, (self.q2Button.frame.origin.y - 50), self.q2Button.frame.size.width, self.q2Button.frame.size.height);
    
    [UIView commitAnimations];
    //
 //   isAnimated = YES;
    
}

@end
