//
//  SendRequestViewController.h
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainViewController.h"
#import "QuestionPack.h"

#import "SBJson.h"

@interface SendRequestViewController : UIViewController
- (IBAction)testbutton:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *requestBtn;
@property (strong, nonatomic) IBOutlet UIButton *shareButton;
@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSString *userID;
@property (strong,nonatomic) NSString *userEmail; 

- (IBAction)requestBtnTouched:(id)sender;

- (IBAction)shareTouched:(id)sender;

@end
