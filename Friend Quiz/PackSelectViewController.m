//
//  PackSelectViewController.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "PackSelectViewController.h"

@interface PackSelectViewController ()

@end

@implementation PackSelectViewController

@synthesize selectedQuestionPackID;

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
    
    [QuestionPack sharedCenter].questionIndex = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EditQuestionViewController *destination = [segue destinationViewController];
    destination.selectedQuestionPackID = selectedQuestionPackID;
}

-(void)selectQuestionPackWithID: (int)packID
{
    [[QuestionPack sharedCenter]enterQuestionPackIDandGetInfoFromDatabase:packID];
}

@end
