//
//  MainViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-13.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import <AudioToolbox/AudioToolbox.h>

@interface MainViewController : UIViewController <FBLoginViewDelegate>

{
    SystemSoundID SoundID;
    
    
}
-(IBAction)PlayAudioButton:(id)sender;

@property NSMutableArray *arrayReceivedRequest;


@property (weak, nonatomic) IBOutlet UITableView *tableviewRequestReceive;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *pictureView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet FBLoginView *loginView2;
@property (strong, nonatomic) IBOutlet UIButton *barButton;
@property (strong,nonatomic) NSString *userID;
@property (strong,nonatomic) NSString *userName;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end
