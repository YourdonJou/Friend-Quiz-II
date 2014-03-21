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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)q1ButtonSelected:(id)sender {
    
    [q1Answer setHidden: NO];
}
@end
