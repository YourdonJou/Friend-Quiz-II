//
//  HelpMenuViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-19.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "HelpMenuViewController.h"
#import "SWRevealViewController.h"

@interface HelpMenuViewController ()

@end

@implementation HelpMenuViewController
@synthesize barButton;

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
    
    //initialize the bar button to show the side menu
    
    [barButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
