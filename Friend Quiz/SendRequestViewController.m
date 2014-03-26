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

@synthesize requestBtn, userName, userEmail,userID;

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
    
    
    // Get Question Info Internally
    NSArray *questionTitle = [QuestionPack sharedCenter].questionTitle;
    
    NSArray *questionAnswer1 = [QuestionPack sharedCenter].questionAnswers[0];
    NSArray *questionAnswer2 = [QuestionPack sharedCenter].questionAnswers[1];
    NSArray *questionAnswer3 = [QuestionPack sharedCenter].questionAnswers[2];
    NSArray *questionAnswer4 = [QuestionPack sharedCenter].questionAnswers[3];
    NSArray *questionAnswer5 = [QuestionPack sharedCenter].questionAnswers[4];
    
    NSArray *questionAnswerIndex = [QuestionPack sharedCenter].questionCorrectAnswerIndex;
    
    
    // Store all the information to the database
    NSString *urlToPass = [NSString stringWithFormat:@"http://racketrepublic.com/loadGamePack.php?Q1=%@&Q1A1=%@&Q1A2=%@&Q1A3=%@&Q1A4=%@&Q1AI=%@&Q2=%@&Q2A1=%@&Q2A2=%@&Q2A3=%@&Q2A4=%@&Q2AI=%@&Q3=%@&Q3A1=%@&Q3A2=%@&Q3A3=%@&Q3A4=%@&Q3AI=%@&Q4=%@&Q4A1=%@&Q4A2=%@&Q4A3=%@&Q4A4=%@&Q4AI=%@&Q5=%@&Q5A1=%@&Q5A2=%@&Q5A3=%@&Q5A4=%@&Q5AI=%@&Note=%@",
                           questionTitle[0],questionAnswer1[0],questionAnswer1[1],questionAnswer1[2],questionAnswer1[3],questionAnswerIndex[0],
                           
                           questionTitle[1],questionAnswer1[0],questionAnswer1[1],questionAnswer1[2],questionAnswer1[3],questionAnswerIndex[1],
                           
                           questionTitle[2],questionAnswer1[0],questionAnswer1[1],questionAnswer1[2],questionAnswer1[3],questionAnswerIndex[2],
                           
                           questionTitle[3],questionAnswer1[0],questionAnswer1[1],questionAnswer1[2],questionAnswer1[3],questionAnswerIndex[3],
                           
                           questionTitle[4],questionAnswer1[0],questionAnswer1[1],questionAnswer1[2],questionAnswer1[3],questionAnswerIndex[4]
                           
                            ];
    
    NSURL *url = [NSURL URLWithString:urlToPass];
    
    
    

   
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
    
 
    //Retrieve user name and email address
    [[FBRequest requestForMe] startWithCompletionHandler:^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
        if (!error) {
           userName = user.name;
            userID = user.id;
            
            userEmail = [user objectForKey:@"email"];
            
            NSLog(@"Your User ID is %@. \n Your email is %@. \n Your user name is %@", userID,userEmail,userName);
            
          //  self.emailLabel.text = [user objectForKey:@"email"];
        }
    }];
       // Facebook.session.user.id =
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
    
   [self.navigationController popToViewController:[[self.navigationController viewControllers] objectAtIndex:0] animated:YES];
    
    
    [FBWebDialogs
     
     presentRequestsDialogModallyWithSession:nil
     
     message:@"Send request to your friends"
     
     title:@"Send Request"
     
     parameters:nil
     
     handler:^(FBWebDialogResult result, NSURL *resultURL, NSError *error) {}
     
     ];
}
- (IBAction)requestBtnTouched:(id)sender {
    
    
    NSMutableDictionary *params =   [NSMutableDictionary dictionaryWithObjectsAndKeys: nil];
    
    [FBWebDialogs
     presentRequestsDialogModallyWithSession:nil
     message:@"I just invited you to play Friend Quiz! Do you want to join me?"
     title:@"How well do you know me?"
     parameters:params
     handler:^(FBWebDialogResult result, NSURL *resultURL, NSError *error) {
     
         if (error) {
             // Case A: Error launching the dialog or sending request.
             NSLog(@"Error sending request.");
         } else {
             if (result == FBWebDialogResultDialogNotCompleted) {
                 // Case B: User clicked the "x" icon
                 NSLog(@"User canceled request.");
             } else {
                 NSLog(@"Request Sent.");
             }

         }}
     
  ];
    

    
    //Code from Friend Smasher Game
 /*   [FBWebDialogs presentRequestsDialogModallyWithSession:nil
                                                  message:[NSString stringWithFormat:@"I just smashed %d friends! Can you beat it?", nScore]
                                                    title:@"Smashing!"
                                               parameters:params
                                                  handler:^(FBWebDialogResult result, NSURL *resultURL, NSError *error) {
                                                      if (error) {
                                                          // Case A: Error launching the dialog or sending request.
                                                          NSLog(@"Error sending request.");
                                                      } else {
                                                          if (result == FBWebDialogResultDialogNotCompleted) {
                                                              // Case B: User clicked the "x" icon
                                                              NSLog(@"User canceled request.");
                                                          } else {
                                                              NSLog(@"Request Sent.");
                                                          }
                                                      }}
                                              friendCache:nil];
  
  */
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
