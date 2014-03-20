//
//  AwardsViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-05.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AwardsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *sideMenuButton;
@property (strong, nonatomic) IBOutlet UIImageView *achivement1MessageView;
@property (strong, nonatomic) IBOutlet UIButton *achivement1Message;
@property (strong, nonatomic) IBOutlet UIButton *achivement1Balloon;
- (IBAction)ballonSelected:(id)sender;

@end
