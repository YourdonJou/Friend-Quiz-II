//
//  PrepareForAnswerQuestionViewController.m
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/3/19.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import "PrepareForAnswerQuestionViewController.h"

@interface PrepareForAnswerQuestionViewController ()

@end

@implementation PrepareForAnswerQuestionViewController


@synthesize rows, selectedExternalQuestionPackTOPASS;

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
    
    // Get Question pack as a unique game from external DB
    NSURL *url = [NSURL URLWithString:@"http://racketrepublic.com/playGame.php"];
	NSString *jsonreturn = [[NSString alloc] initWithContentsOfURL:url];
	
	NSLog(jsonreturn); // Look at the console and you can see what the restults are
	
	NSData *jsonData = [jsonreturn dataUsingEncoding:NSUTF32BigEndianStringEncoding];
	NSError *error = nil;
	
	// In "real" code you should surround this with try and catch
	NSDictionary * dict = [[CJSONDeserializer deserializer] deserializeAsDictionary:jsonData error:&error];
	if (dict)
	{
		rows = [dict objectForKey:@"QuestionPack"];
	}
    
    NSDictionary *dict2 = [rows objectAtIndex: 0];
    
	NSLog(@"Array: %@",dict2);
    
    NSLog(@"Array: %@",[dict2 objectForKey:@"Q1A1"]);
    
    NSMutableArray *questionTitle = [NSArray arrayWithObjects:
                              [dict2 objectForKey:@"Q1"],
                              [dict2 objectForKey:@"Q2"],
                              [dict2 objectForKey:@"Q3"],
                              [dict2 objectForKey:@"Q4"],
                              [dict2 objectForKey:@"Q5"], nil];
    
    NSArray *Q1A = [NSArray arrayWithObjects:
                    [dict2 objectForKey:@"Q1A1"],
                    [dict2 objectForKey:@"Q1A2"],
                    [dict2 objectForKey:@"Q1A3"],
                    [dict2 objectForKey:@"Q1A4"], nil];
    
    NSArray *Q2A = [NSArray arrayWithObjects:
                    [dict2 objectForKey:@"Q2A1"],
                    [dict2 objectForKey:@"Q2A2"],
                    [dict2 objectForKey:@"Q2A3"],
                    [dict2 objectForKey:@"Q2A4"], nil];
    
    NSArray *Q3A = [NSArray arrayWithObjects:
                    [dict2 objectForKey:@"Q3A1"],
                    [dict2 objectForKey:@"Q3A2"],
                    [dict2 objectForKey:@"Q3A3"],
                    [dict2 objectForKey:@"Q3A4"], nil];
    
    NSArray *Q4A = [NSArray arrayWithObjects:
                    [dict2 objectForKey:@"Q4A1"],
                    [dict2 objectForKey:@"Q4A2"],
                    [dict2 objectForKey:@"Q4A3"],
                    [dict2 objectForKey:@"Q4A4"], nil];
    
    NSArray *Q5A = [NSArray arrayWithObjects:
                    [dict2 objectForKey:@"Q5A1"],
                    [dict2 objectForKey:@"Q5A2"],
                    [dict2 objectForKey:@"Q5A3"],
                    [dict2 objectForKey:@"Q5A4"], nil];
    
    NSMutableArray *questionAnswer = [NSArray arrayWithObjects: Q1A, Q2A, Q3A, Q4A, Q5A, nil];
    
    NSMutableArray *questionCorrectAnswerIndex = [NSArray arrayWithObjects:
                              [dict2 objectForKey:@"Q1AI"],
                              [dict2 objectForKey:@"Q2AI"],
                              [dict2 objectForKey:@"Q3AI"],
                              [dict2 objectForKey:@"Q4AI"],
                              [dict2 objectForKey:@"Q5AI"], nil];
    
    
    selectedExternalQuestionPackTOPASS = [[ExternalQuestionPack alloc]init];
    
    [selectedExternalQuestionPackTOPASS setQuestionPackID:[[dict2 objectForKey:@"ID"]integerValue] ];
    
    [selectedExternalQuestionPackTOPASS setQuestionTitle:questionTitle];
    
    [selectedExternalQuestionPackTOPASS setQuestionAnswers: questionAnswer];
    
    [selectedExternalQuestionPackTOPASS setQuestionCorrectAnswerIndex: questionCorrectAnswerIndex];
    
    
    [QuestionPack sharedCenter].externalQuestionPack = selectedExternalQuestionPackTOPASS;
    
    
    NSLog(@"contents of packID: %d",  selectedExternalQuestionPackTOPASS.questionPackID);
    NSLog(@"PrepareForAnswerQuestion QuestionTitle %@",  selectedExternalQuestionPackTOPASS.questionTitle);
    NSLog(@"contents of newArray: %@",  selectedExternalQuestionPackTOPASS.questionCorrectAnswerIndex);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/















@end
