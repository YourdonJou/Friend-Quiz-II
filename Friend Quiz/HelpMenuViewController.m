//
//  HelpMenuViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-19.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "HelpMenuViewController.h"
#import "SWRevealViewController.h"

@interface HelpMenuViewController ()

@end

@implementation HelpMenuViewController{
    
    
    NSMutableArray *menuItems;
    
    
}
@synthesize barButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    
    
    self.helpTableView.delegate = self;
    self.helpTableView.dataSource = self;
    
    
    menuItems = [[NSMutableArray alloc]init];
    
    [menuItems addObject:@"game"];
    
    [menuItems addObject:@"achievements"];
    

    
    [menuItems addObject:@"facebook"];
    

    
 //   [menuItems addObject:@"question"];
    
    for(int i = 0; i < [menuItems count]; i++)
    {
        
        
        NSLog(@"Items in array are %@",menuItems[i]);
        
    }
    
    
    self.helpTableView.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.4];
    

    
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
       [barButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    
   // menuItems = @[@"game",@"achievements",@"facebook", @"question"];
    
    NSLog(@"View Will appear loaded");
    
}

/*
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //initialize the bar button to show the side menu
    
   self.helpTableView.delegate = self;
  self.helpTableView.dataSource = self;
    
    //change table view colour
    
    self.helpTableView.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.4];
    
    
    menuItems = [[NSMutableArray alloc]init];
    
    [menuItems addObject:@"game"];
    
    [menuItems addObject:@"achievements"];
    
    
    
    [menuItems addObject:@"facebook"];
    
    
    
    [menuItems addObject:@"question"];
    
   [barButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    
  //  [self.scrollView setScrollEnabled:YES];
 //   [self.scrollView setContentSize:(CGSizeMake(250, 500))];
    
    
 //   menuItems = [[NSArray alloc]init];

    
  //  menuItems = @[@"game",@"achievements",@"facebook", @"question"];
  //  menuItems = [[NSArray alloc]initWithObjects:@"game", @"achievements", @"facebook", @"question"];
    
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

}
 
 */

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Table View Delegates



-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    cell.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.4];


    
}

#pragma Table View Data Sources
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
   return [menuItems count];
    //return 4;
    

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [self.helpTableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    
    return cell;
    
}
@end
