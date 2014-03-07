//
//  SendRequestViewController.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//
//Add text


#import "SendRequestViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface SendRequestViewController ()

@end

@implementation SendRequestViewController

@synthesize requestBtn;

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
    

   
    if([FBSession.activeSession.permissions indexOfObject:@"publish_actions" ]== NSNotFound){
        
        //no publish permissions found
        
        
        NSArray *permissions = [[NSArray alloc] initWithObjects:
                                @"publish_actions", nil];
        //check permissions
        [[FBSession activeSession]requestNewPublishPermissions:permissions defaultAudience:FBSessionDefaultAudienceEveryone completionHandler:^(FBSession *session, NSError *error) {
            
            NSLog(@"Reathorized with publish permission");
        }];
        
        NSLog(@"Publish permissions not found");
    }
    
    else{
        
        
        //publish permissions found
        NSLog(@"Publish permissions found");

    }
   // [[FBSession activeSession] requestNewPublishPermissions:permissions defaultAudience:FBSessionDefaultAudienceFriends completionHandler:^(FBSession *session, NSError *error) {
        NSLog(@"Reauthorized with publish permissions.");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testbutton:(id)sender {
    
    [QuestionPack sharedCenter].questionIndex = 0;
    
   // [self.navigationController popToViewController:[[self.navigationController viewControllers] objectAtIndex:0] animated:YES];
    
    
    [FBWebDialogs
     
     presentRequestsDialogModallyWithSession:nil
     
     message:@"Send request to your friends"
     
     title:@"Send Request"
     
     parameters:nil
     
     handler:^(FBWebDialogResult result, NSURL *resultURL, NSError *error) {}
     
     ];
}
- (IBAction)requestBtnTouched:(id)sender {
    
    
    [FBWebDialogs
     presentRequestsDialogModallyWithSession:nil
     message:@"Send Request Test"
     title:nil
     parameters:nil
     handler:^(FBWebDialogResult result, NSURL *resultURL, NSError *error) {}
     ];
}
- (IBAction)shareTouched:(id)sender {
    
    /*NSMutableDictionary<FBGraphObject> *action = [FBGraphObject graphObject];
    action[@"game"] = @"http://samples.ogp.me/1409447119308463";
    
    [FBRequestConnection startForPostWithGraphPath:@"me/gettoknowmequiz:play"
                                       graphObject:action
                                 completionHandler:^(FBRequestConnection *connection,
                                                     id result,
                                                     NSError *error) {
                                     // handle the result
                                 }];
     
     
     */
    
    NSMutableDictionary<FBGraphObject> *object =
    [FBGraphObject openGraphObjectForPostWithType:@"gettoknowmequiz:game"
                                            title:@"Sample Game"
                                            image:@"https://fbstatic-a.akamaihd.net/images/devsite/attachment_blank.png"
                                              url:@"http://samples.ogp.me/1409447119308463"
                                      description:@""];;
    
    [FBRequestConnection startForPostWithGraphPath:@"me/objects/gettoknowmequiz:game"
                                       graphObject:object
                                 completionHandler:^(FBRequestConnection *connection,
                                                     id result,
                                                     NSError *error) {
                                     // handle the result
                                 }];
}
@end
