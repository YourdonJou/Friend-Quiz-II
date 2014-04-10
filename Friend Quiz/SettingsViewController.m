//
//  SettingsViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-19.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "SettingsViewController.h"
#import "SWRevealViewController.h"
#import "INFO_4290_Final_ProjectAppDelegate.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController{
    
    
    BOOL soundOn;
   // UIImage *backImage;
    UIImage *soundImage;
    
      INFO_4290_Final_ProjectAppDelegate *appDelegate;
}

@synthesize barbutton;
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
    
    appDelegate.soundON =  soundOn;
    appDelegate = (INFO_4290_Final_ProjectAppDelegate *)[[UIApplication sharedApplication]delegate];
    
    
    //Check if user has selected sound has been turned on
    if(appDelegate.soundON == NO){
        
        
                UIImage *soundOffImage  = [UIImage imageNamed:@"sound-off.png"];
        [self.soundButton setImage:soundOffImage forState:UIControlStateNormal];
        
        appDelegate.soundON = YES;
    }
    else{
        
        UIImage *soundOnImage  = [UIImage imageNamed:@"soundon.png"];
        [self.soundButton setImage:soundOnImage forState:UIControlStateNormal];
        appDelegate.soundON = NO;
    }
    
    self.backgroundImage.image = appDelegate.backgroundImage;
    
    
	// Do any additional setup after loading the view.
    
    self.listButton.target = self.revealViewController;
    
    self.listButton.action = @selector(revealToggle:);
    
    [barbutton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    

 
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    NSLog(@"Settings View Loaded!");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)soundOptionSelected:(id)sender {
    
    
    if(appDelegate.soundON == NO){
        
        
        UIImage *soundOnImage = [UIImage imageNamed:@"soundon.png"];
        
        [self.soundButton setImage:soundOnImage forState:UIControlStateNormal];
       // soundOn = YES;
        
        appDelegate.soundON = YES;
        
        NSLog(@"Sound ON");


        
    }
    
    else{
        
         UIImage *soundOffImage  = [UIImage imageNamed:@"sound-off.png"];
        
        [self.soundButton setImage:soundOffImage forState:UIControlStateNormal];
        
        
        //soundOn = NO;
        
        appDelegate.soundON = NO;
        
        NSLog(@"Sound is Off");

        
    }
    
    
    
}

- (IBAction)blueSelected:(id)sender {
    
    UIImage *backImage = [UIImage imageNamed:@"pink-blueBackground.png"];
  //  UIImageView *backgroundImage = [[UIImage alloc]initwithImage:backImage];
    
    self.backgroundImage.image = backImage;
    
    appDelegate.backgroundImage = backImage;

    
    }

- (IBAction)greenSelected:(id)sender {
    
   UIImage *backImage = [UIImage imageNamed:@"greenBackground.png"];
    //  UIImageView *backgroundImage = [[UIImage alloc]initwithImage:backImage];
    
    self.backgroundImage.image = backImage;
    
    appDelegate.backgroundImage = backImage;
    
    



}
- (IBAction)acquaSelected:(id)sender {
    
    UIImage *backImage = [UIImage imageNamed:@"pinkBackground.png"];
    //  UIImageView *backgroundImage = [[UIImage alloc]initwithImage:backImage];
    
    self.backgroundImage.image = backImage;
    
    appDelegate.backgroundImage = backImage;

}
@end
