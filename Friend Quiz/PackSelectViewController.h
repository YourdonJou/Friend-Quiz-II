//
//  PackSelectViewController.h
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/2/12.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EditQuestionViewController.h"
#import "QuestionPack.h"

@interface PackSelectViewController : UIViewController

@property int selectedQuestionPackID;

-(void)selectQuestionPackWithID: (int)packID;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;



@end
