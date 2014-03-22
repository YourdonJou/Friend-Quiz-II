//
//  HelpMenuViewController.h
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-19.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpMenuViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIButton *barButton;


@property (strong, nonatomic) IBOutlet UITableView *helpTableView;

@end
