//
//  PrepareForAnswerQuestionViewController.h
//  Friend Quiz
//
//  Created by Shi Yo Jou on 2014/3/19.
//  Copyright (c) 2014年 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CJSONDeserializer.h"
#import "ExternalQuestionPack.h"
#import "QuestionPack.h"


@interface PrepareForAnswerQuestionViewController : UIViewController

@property ExternalQuestionPack *selectedExternalQuestionPackTOPASS;
@property NSArray *rows;



@end
