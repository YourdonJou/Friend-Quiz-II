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

@implementation AwardsViewController
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
    
    [sideMenuButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
	// Do any additional setup after loading the view.
    
   /*
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]
                                            initWithTarget:self action:@selector(handleSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [imgView_ addGestureRecognizer:swipeRight];
    [swipeRight release];
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]
                                           initWithTarget:self action:@selector(handleSwipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [imgView_ addGestureRecognizer:swipeLeft];
    [swipeLeft release];
    
    */
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    /*
    [self.achivement1balloon setUserInteractionEnabled:YES];
    
    [self.achivement1balloon addGestureRecognizer:swipeRight];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.achivement1balloon addGestureRecognizer:swipeRight];
     
     */
    
    [self.achivement1MessageView setHidden:YES];
    
    [self.achivement1Message setHidden:YES];
    
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
    
    
    [self.achivement1MessageView setHidden:NO];
    
    // instantaneously make the image view small (scaled to 1% of its actual size)
    self.achivement1MessageView.transform = CGAffineTransformMakeScale(0.01, 0.01);
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        // animate it to the identity transform (100% scale)
        self.achivement1MessageView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
        // if you want to do something once the animation finishes, put it here
    }];
    
}
@end
