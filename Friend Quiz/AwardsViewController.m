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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
