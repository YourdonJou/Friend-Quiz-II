//
//  Help_FacebookViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-03-21.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Help_FacebookViewController : UIViewController <UINavigationBarDelegate>

@property (strong, nonatomic) IBOutlet UIButton *q1Button;
@property (strong, nonatomic) IBOutlet UILabel *q1Answer;
- (IBAction)q1ButtonSelected:(id)sender;



@property (strong, nonatomic) IBOutlet UIButton *q2Button;
@property (strong, nonatomic) IBOutlet UILabel *q2Answer;
- (IBAction)q2ButtonSelected:(id)sender;


@end
