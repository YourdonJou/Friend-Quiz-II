//
//  MyProfileViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-19.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "MyProfileViewController.h"
#import "SWRevealViewController.h"


@interface MyProfileViewController ()

@end

@implementation MyProfileViewController
@synthesize barButton, scrollView,titleView,fbLoginView,fbpicture;
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
    
    [FBLoginView class];
    [FBProfilePictureView class];
    

    fbLoginView.delegate = self;
    
    
    [fbLoginView setHidden: YES];
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:(CGSizeMake(200, 600))];
    
    
    NSString *titleText = @"'s Achievements";
    
    [[FBRequest requestForMe] startWithCompletionHandler:^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
        if (!error) {
            
            //Yourdon, you can use this code to retrieve the user ID and name and store it on the DB
            self.FBUsername = user.name;
            
            // userEmail = [user objectForKey:@"email"];
            //Show that the user ID and name show on the console:
            
            //  self.emailLabel.text = [user objectForKey:@"email"];
        }
    }];
    
    NSString *entireText = [_FBUsername stringByAppendingString:titleText ];
    
    titleView.text = entireText;
    
    NSLog(@"%@",entireText);

    
   // _sidebarButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
    
    [barButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];


  //  _listButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
  //  _listButton.target = self.revealViewController;
    
   // _listButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view.
}

-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
    
    fbpicture.profileID = user.id;
    NSString *username = user.name;
    NSString *welcomeText = @"'s Achievements";
    
    NSString *combinedText = [username stringByAppendingString:welcomeText];
    
    
    titleView.text = combinedText;

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
