//
//  SettingsViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-19.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIBarButtonItem *listButton;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIButton *barbutton;
@property (strong, nonatomic) IBOutlet UIButton *soundButton;


@property (strong, nonatomic) IBOutlet UIButton *blueScheme;
@property (strong, nonatomic) IBOutlet UIButton *greenScheme;
@property (strong, nonatomic) IBOutlet UIButton *acquaScheme;



- (IBAction)soundOptionSelected:(id)sender;
- (IBAction)blueSelected:(id)sender;
- (IBAction)greenSelected:(id)sender;

- (IBAction)acquaSelected:(id)sender;


@end
