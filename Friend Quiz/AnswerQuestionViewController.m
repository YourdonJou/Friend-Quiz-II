//
//  AnswerQuestionViewController.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/26.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "AnswerQuestionViewController.h"

@interface AnswerQuestionViewController ()

@end

@implementation AnswerQuestionViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)exitToNextVCCheck
{
    // Exit Condition
    if([QuestionPack sharedCenter].questionIndex == 5)
    {
        [self performSegueWithIdentifier:@"toGameResult" sender:nil];
    }
    else
    {
        [self performSegueWithIdentifier:@"toSelf" sender:nil];
    }
    
    
    [QuestionPack sharedCenter].questionIndex ++;
}

- (IBAction)question1button:(id)sender
{
    
    
}

- (IBAction)question2button:(id)sender
{
    
    
}

- (IBAction)question3button:(id)sender
{
    
    
}

- (IBAction)question4button:(id)sender
{
    
    
}



@end







