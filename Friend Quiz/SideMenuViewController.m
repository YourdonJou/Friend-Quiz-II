//
//  SideMenuViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-13.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "SideMenuViewController.h"
#import "SettingsViewController.h"
#import "MyProfileViewController.h"
#import "SWRevealViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController{
    
    
   // NSArray *menuItems;
    
    NSArray *menuChoices;
    
    
}

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
    
    self.tableView.delegate = self;
    self.tableView.dataSource =self;
    
    self.view.backgroundColor = [UIColor colorWithWhite:1.9f alpha:0.3f];
    
    //Add the colour to the table view

    self.tableView.backgroundColor = [UIColor colorWithWhite:1.9f alpha:0.3f];
    
    self.tableView.separatorColor = [UIColor colorWithWhite:0.3f alpha:0.3f];
    //menuItems = [[NSArray alloc]init];
   
    menuChoices = @[@"home", @"settings", @"profile", @"awards", @"help"];
  //  menuItems = @[@"Your Status", @"Settings", @"My Profile", @"My Awards", @"Help"];
	// Do any additional setup after loading the view.
    
   // [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellIdentifier"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    //return [menuItems count];
    
    return [menuChoices count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [menuChoices objectAtIndex:indexPath.row];
    
  //  static NSString *CellIdentifier = @"Cell";
    
    
    
   // NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    

    /*
    if(cell== nil)
       {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
       }
  
    */
    
    
      //self.cellData = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    
    
    
        
    
    
   // UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
   // cell.textLabel.text = [menuChoices objectAtIndex:indexPath.row];
    
    return cell;
}

//method to set the cell color and table view separator color
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [cell setBackgroundColor:[UIColor colorWithWhite:0.1f alpha:0.3f]];
    
    
    self.tableView.separatorColor = [UIColor colorWithWhite:0.8f alpha:0.3f];
    
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
  //  NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
  
    if( [segue.identifier isEqualToString:@"settingsSegue"])
    {
        
    //    SettingsViewController *destViewController = (SettingsViewController *)segue.destinationViewController;
        
     //   destViewController.title = [menuChoices objectAtIndex:indexPath.row];
         
         
         }
    
    else if( [segue.identifier isEqualToString:@"profileSegue"])
    {
        
     //   MyProfileViewController *destViewController = (MyProfileViewController *)segue.destinationViewController;
        
        //   destViewController.title = [menuChoices objectAtIndex:indexPath.row];
        
        
    }
    
    
    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] ) {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
            
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers: @[dvc] animated: NO ];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
        };

    
}



    /*if(indexPath.row == 0)
    {
     
     
        //Implement the Settings
        
        NSLog(@"You chose the status cell");
    }
    
    else if (indexPath.row == 1 ){
        
        SettingsViewController *destView = (SettingsViewController *)segue.destinationViewController;
        
        NSLog(@"You chose the settings menu!!");
        
        [self performSegueWithIdentifier:@"settingsSegue" sender:self];
        
        
    }
     
     */
    /*
    if ([segue.identifier isEqualToString:@"settingsSegue"]){
        
        SettingsViewController *destViewController = (SettingsViewController *)segue.destinationViewController;
        
        
    }
    
     */
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
 //  [self performSegueWithIdentifier:@"settingsSegue" sender:self];
    
   // [self performSegueWithIdentifier:@"settingsSegue" sender:self];
    
    
    /*
    if(indexPath.row ==1 ){
        
        NSLog(@"You selected the Settings Row");
        
 
 //       SettingsViewController *svc = [[SettingsViewController alloc]init];
        
       // UIStoryboardSegue *segue = [[UIStoryboardSegue alloc]initWithIdentifier:nil  source:self destination:svc];
        
        
        
       // svc = (SettingsViewController *)segue.destinationViewController;
        
     //   [self presentViewController:svc animated:YES completion:nil];
        
     //   [self.navigationController pushViewController:svc animated:YES];
   
    }
    
    */
    
    
}
@end
