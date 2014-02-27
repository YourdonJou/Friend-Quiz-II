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

@synthesize selectedExternalQuestionPack, question1label, question2label, question3label, question4label, questionTitleLabel;

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
    
    //test code
    ExternalQuestionPack *data = [[ExternalQuestionPack alloc]init];
    
    [data setQuestionPackID:[QuestionPack sharedCenter].questionPackID ];
    
    [data setQuestionTitle:[QuestionPack sharedCenter].questionTitle ];
    
    [data setQuestionAnswers:[QuestionPack sharedCenter].questionAnswers];
    
    [data setQuestionCorrectAnswerIndex:[QuestionPack sharedCenter].questionCorrectAnswerIndex];
    // test code end
    
    selectedExternalQuestionPack = data;
    
    // Get question detail
    questionTitleLabel.text = data.questionTitle[[QuestionPack sharedCenter].questionIndex] ;
    
    [question1label setTitle:[data.questionAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][0]forState:UIControlStateNormal  ];
    
    [question2label setTitle:[data.questionAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][1]forState:UIControlStateNormal  ];
    
    [question3label setTitle:[data.questionAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][2]forState:UIControlStateNormal  ];
    
    [question4label setTitle:[data.questionAnswers objectAtIndex:[QuestionPack sharedCenter].questionIndex][3]forState:UIControlStateNormal  ];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)exitToNextVCCheck
{
    // Exit Condition
    if([QuestionPack sharedCenter].questionIndex == 4)
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
    
    [self exitToNextVCCheck];
}

- (IBAction)question2button:(id)sender
{
    
    [self exitToNextVCCheck];
}

- (IBAction)question3button:(id)sender
{
    
    [self exitToNextVCCheck];
}

- (IBAction)question4button:(id)sender
{
    
    [self exitToNextVCCheck];
}



@end







