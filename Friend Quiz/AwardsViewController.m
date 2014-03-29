//
//  AwardsViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-05.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "AwardsViewController.h"
#import "SWRevealViewController.h"

@interface AwardsViewController ()

@end

@implementation AwardsViewController{
    
    BOOL animated;
    BOOL animated2;
    BOOL animated3;
}
@synthesize sideMenuButton;

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
    
    animated = NO;
    animated2 = NO;
    
    [sideMenuButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
	// Do any additional setup after loading the view.
    
    
    //enable ScrollView
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setContentSize:(CGSizeMake(300, 800))];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    
    [self.achivement1Message setHidden:YES];
    [self.achivement1MessageView setHidden:YES];
  
    [self.achievement2Message setHidden: YES];
    [self.achievement2Label setHidden:YES];

    
    
}


-(void)handleSwipe{
    
    [self.achivement1MessageView setHidden:NO];
    
    NSLog(@"you clicked the achievement message bubble");
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ballonSelected:(id)sender {
    
    
    if(!animated)
    {
    [self.achivement1MessageView setHidden:NO];
    
    // instantaneously make the image view small (scaled to 1% of its actual size)
    self.achivement1MessageView.transform = CGAffineTransformMakeScale(0.01, 0.01);
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        // animate it to the identity transform (100% scale)
        self.achivement1MessageView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
        // if you want to do something once the animation finishes, put it here
    }];
        
        animated = YES;
    }
    
    else{
        
        
        [self.achivement1MessageView setHidden:YES];
        animated = NO;
    }
}

- (IBAction)balloon2Selected:(id)sender {
    
    if(!animated2){
        
        [self.achievement2Message setHidden: NO];
                [self.achievement2Label setHidden: NO];
        
       
        self.achievement2Message.transform = CGAffineTransformMakeScale(0.01, 0.01);
          self.achievement2Label.transform = CGAffineTransformMakeScale(0.01, 0.01);
     
        [UIView animateWithDuration:0.2
                              delay:0
                            options:UIViewAnimationOptionCurveEaseIn animations:^{
            
                                _achievement2Message.transform = CGAffineTransformIdentity;
                                _achievement2Label.transform = CGAffineTransformIdentity;
                                
                                [UIView beginAnimations:nil context:nil];
                                [UIView setAnimationDelegate:self];
                                [UIView setAnimationDuration:0.2];
                                 UIColor *color=  [self getRGBAsFromImage:_backgroundImage atX:100 andY:100 count:1];
                                
                                [[self backgroundImage]setBackgroundColor:[UIColor colorWithWhite:0.3 alpha:0.4]];
                                [UIView commitAnimations];
                            
                            }completion:^(BOOL finished) {
                                
                                 animated = YES;
                //
            
            
        }];
        
        
   

        
        
    }
    
    else{
        
        [_achievement2Message setHidden:YES];
        [_achievement2Label setHidden:YES];

        animated2 = NO;
        
    }
    
    
}
@end
