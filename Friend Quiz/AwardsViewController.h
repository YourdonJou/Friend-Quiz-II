//
//  AwardsViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-05.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AwardsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIButton *sideMenuButton;
@property (strong, nonatomic) IBOutlet UIImageView *achivement1MessageView;
@property (strong, nonatomic) IBOutlet UIButton *achivement1Message;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIButton *achivement1Balloon;
@property (strong, nonatomic) IBOutlet UILabel *achievement1Label;


@property (strong, nonatomic) IBOutlet UIButton *achievement2Balloon;
@property (strong, nonatomic) IBOutlet UIImageView *achievement2Message;
@property (strong, nonatomic) IBOutlet UILabel *achievement2Label;

@property (strong, nonatomic) IBOutlet UIButton *achievement3Balloon;
@property (strong, nonatomic) IBOutlet UIImageView *achievement3Message;
@property (strong, nonatomic) IBOutlet UILabel *achievement3Label;



- (IBAction)ballonSelected:(id)sender;
- (IBAction)balloon2Selected:(id)sender;
- (IBAction)balloon3Selected:(id)sender;

@end
