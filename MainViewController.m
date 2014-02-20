//
//  MainViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-13.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//Editing Changes

#import "MainViewController.h"
#import "SWRevealViewController.h"
#import "INFO_4290_Final_ProjectAppDelegate.h"
#import "INFO_4290_Final_ProjectViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize sidebarButton, nameLabel, pictureView,loginView,loginView2;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    
    
    
    [FBLoginView class];
    [FBProfilePictureView class];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [FBLoginView class];
    [FBProfilePictureView class];
    
    loginView2.delegate = self;
    
    sidebarButton.target = self.revealViewController;
    sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view.
    
    if([FBSession activeSession].state == FBSessionStateCreatedTokenLoaded){
        
        
        NSLog(@"Facebook user logged in!!!!");
        
    }
    

}
-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
    
    
    
    pictureView.profileID = user.id;
    
    NSString *username = user.name;
    NSString *welcomeText = @"Welcome ";
    
    NSString *combinedText = [welcomeText stringByAppendingString:username];
    
    
    nameLabel.text = combinedText;
}

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Logged out of Facebook" message:@"You are not logged in to Facebook. Please log in and try again" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alertView show];
    
    nameLabel.text = @"You are logged in.";
}

-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView{
    
    self.pictureView.profileID = nil;
    nameLabel.text = @"";
    
    //Return to the first scene
  //  INFO_4290_Final_ProjectViewController *viewController = [[INFO_4290_Final_ProjectViewController alloc]init];
    
    //   [self presentViewController:viewController animated:YES completion:nil];
    
    
    
}

-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
    
    
    
    NSString *alertMessage, *alertTitle;
    
    // If the user should perform an action outside of you app to recover,
    // the SDK will provide a message for the user, you just need to surface it.
    // This conveniently handles cases like Facebook password change or unverified Facebook accounts.
    if ([FBErrorUtility shouldNotifyUserForError:error]) {
        alertTitle = @"Facebook error";
        alertMessage = [FBErrorUtility userMessageForError:error];
        
        // This code will handle session closures that happen outside of the app
        // You can take a look at our error handling guide to know more about it
        // https://developers.facebook.com/docs/ios/errors
    } else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryAuthenticationReopenSession) {
        alertTitle = @"Session Error";
        alertMessage = @"Your current session is no longer valid. Please log in again.";
        
        // If the user has cancelled a login, we will do nothing.
        // You can also choose to show the user a message if cancelling login will result in
        // the user not being able to complete a task they had initiated in your app
        // (like accessing FB-stored information or posting to Facebook)
    } else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryUserCancelled) {
        NSLog(@"user cancelled login");
        
        // For simplicity, this sample handles other errors with a generic message
        // You can checkout our error handling guide for more detailed information
        // https://developers.facebook.com/docs/ios/errors
    } else {
        alertTitle  = @"Something went wrong";
        alertMessage = @"Please try again later.";
        NSLog(@"Unexpected error:%@", error);
    }
    
    if (alertMessage) {
        [[[UIAlertView alloc] initWithTitle:alertTitle
                                    message:alertMessage
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
