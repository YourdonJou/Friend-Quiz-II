//
//  Help_FacebookViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-21.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "Help_FacebookViewController.h"

@interface Help_FacebookViewController ()

@end

@implementation Help_FacebookViewController{
    
    BOOL isAnimated;
    BOOL isAnimated2;
    
    
}

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
    
    [self.q1Answer setHidden:YES];
    [self.q2Answer setHidden:YES];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)q1ButtonSelected:(id)sender {
    
    if(isAnimated){
        
        [self.q1Answer setHidden: NO];
        
        self.q1Answer.transform = CGAffineTransformMakeScale(0.01, 0.5);
        
        [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            // animate it to the identity transform (100% scale)
            self.q1Answer.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished){
            
            //   self.q2Button.frame.origin.y = 100 - self.q2Button.frame.origin.y;
            // if you want to do something once the animation finishes, put it here
        }];
        

        isAnimated = NO;
    }
    
    else{
        
        
        [self.q1Answer setHidden:YES];
        isAnimated = YES;
    }
    
}
- (IBAction)q2ButtonSelected:(id)sender {
    
    
    if(isAnimated2){
        
        
        [self.q2Answer setHidden:NO];
        
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
        
        
        [self.q2Answer setHidden:YES];
        isAnimated2 = YES;
    }
}
@end
