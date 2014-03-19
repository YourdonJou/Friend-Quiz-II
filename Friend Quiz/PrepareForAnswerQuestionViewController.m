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


@synthesize rows;

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
    
	NSLog(@"Array: %@",rows);
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
